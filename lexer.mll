{
  open Parser
}

let dollar = ['$']
let string = [^ '$' '\n']+

rule token = parse
             string { STRING (Lexing.lexeme_start_p lexbuf, Lexing.lexeme lexbuf) }
           | dollar { DOLLAR (Lexing.lexeme_start_p lexbuf) }
           | '\n' {
                 let pos = lexbuf.Lexing.lex_curr_p in
                 lexbuf.Lexing.lex_curr_p <-
                   { pos with
                     Lexing.pos_lnum = pos.Lexing.pos_lnum + 1;
                     Lexing.pos_bol = pos.Lexing.pos_cnum;
                   };
                 STRING (Lexing.lexeme_start_p lexbuf, Lexing.lexeme lexbuf)
               }
           | eof { EOF }
