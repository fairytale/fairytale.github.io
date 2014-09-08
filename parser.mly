%token <Lexing.position * string> STRING
%token <Lexing.position> DOLLAR
%token EOF
%start main
%type <Dsl.t> main

%%
main:
  xs = str_or_expr* EOF { xs }
str_or_expr:
    DOLLAR; x = STRING; DOLLAR { Dsl.Expr (fst x, snd x) }
  | pos = DOLLAR; DOLLAR { Dsl.Str (pos, "$") }
  | pos = DOLLAR { Dsl.Str (pos, "$") }
  | x = STRING { Dsl.Str (fst x, snd x) }
%%
