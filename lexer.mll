{
  open Parser
}

let dollar = ['$']
let string = [^ '$']+

rule token = parse
             string { STRING (Lexing.lexeme lexbuf) }
           | dollar { DOLLAR }
           | eof { EOF }
