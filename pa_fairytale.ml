module Id : Camlp4.Sig.Id = struct
  let name = "fairytale"
  let version = "1.0"
end

module Make (Syntax : Camlp4.Sig.Camlp4Syntax) = struct
  include Syntax

  let add_loc loc1 loc2 =
    let (file_name1, start_line1, start_bol1, start_off1,
         stop_line1, stop_bol1, stop_off1, _) = Loc.to_tuple loc1 in
    let (_, start_line2, start_bol2, start_off2,
         stop_line2, stop_bol2, stop_off2, _) = Loc.to_tuple loc2 in
    Loc.of_tuple
      (file_name1,
       start_line1 + start_line2 - 1,
       (if start_line2 = 1 then start_bol1 + start_bol2 else start_bol2),
       (if start_line2 = 1 then start_off1 + start_off2 else start_off2),
       stop_line1 + stop_line2 - 1,
       (if stop_line2 = 1 then stop_bol1 + stop_bol2 else stop_bol2),
       (if stop_line2 = 1 then stop_off1 + stop_off2 else stop_off2),
       false)

  let () = Quotation.add "fairytale"
                         Quotation.DynAst.expr_tag
                         (fun _loc _ s ->
                          let lexbuf = Lexing.from_string s in
                          let xs = Parser.main Lexer.token lexbuf in
                          let xs = List.map (function
                                     | Dsl.Str (pos, s) ->
                                        let _loc1 = Loc.of_lexing_position pos
                                        in
                                        let _loc = add_loc _loc _loc1 in
                                        <:expr<Html5.M.pcdata $str:s$>>
                                     | Dsl.Expr (pos, s) ->
                                        let _loc1 = Loc.of_lexing_position pos
                                        in
                                        let _loc = add_loc _loc _loc1 in
                                        AntiquotSyntax.parse_expr _loc s) xs in
                          let xs = List.fold_left
                                     (fun a b -> <:expr<[$b$ :: $a$]>>)
                                     <:expr<[]>> xs in
                          <:expr<List.rev $xs$>>)
end
 
module M = Camlp4.Register.OCamlSyntaxExtension(Id)(Make)
