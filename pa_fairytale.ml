module Id : Camlp4.Sig.Id = struct
  let name = "HelloWorld"
  let version = "1.0"
end
 
module Make (Syntax : Camlp4.Sig.Camlp4Syntax) = struct
  include Syntax
  let () = Quotation.add "fairytale"
                         Quotation.DynAst.expr_tag
                         (fun _loc _ s ->
                          let lexbuf = Lexing.from_string s in
                          let xs = Parser.main Lexer.token lexbuf in
                          let xs = List.map (function
                                     | Dsl.Str s ->
                                        <:expr<Html5.M.pcdata $str:s$>>
                                     | Dsl.Expr s ->
                                        AntiquotSyntax.parse_expr _loc s) xs in
                          let xs = List.fold_left
                                     (fun a b -> <:expr<[$b$ :: $a$]>>)
                                     <:expr<[]>> xs in
                          <:expr<List.rev $xs$>>)
(*EXTEND Syntax.Gram
expr:
[[ "hello"; x = expr -> x ]]
;
  END*)
end
 
module M = Camlp4.Register.OCamlSyntaxExtension(Id)(Make)
