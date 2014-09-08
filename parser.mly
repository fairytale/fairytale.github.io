%token <string> STRING
%token DOLLAR
%token EOF
%start main
%type <Dsl.t> main

%%
main:
  xs = str_or_expr* EOF { xs }
str_or_expr:
    DOLLAR; s = STRING; DOLLAR { Dsl.Expr s }
  | DOLLAR; DOLLAR { Dsl.Str "$" }
  | DOLLAR { Dsl.Str "$" }
  | s = STRING { Dsl.Str s }
%%
