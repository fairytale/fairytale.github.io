%token <Lexing.position * string> STRING
%token <Lexing.position> DOLLAR
%token EOF
%start main
%type <Dsl.t> main

%%
main:
  xs = str_or_expr* EOF { xs }
str_or_expr:
    pos = DOLLAR; DOLLAR { Dsl.Str (pos, "$") }
  | DOLLAR; xs = STRING+; DOLLAR { Dsl.Expr ( fst (List.hd xs)
                                            , String.concat
                                                ""
                                                (List.map snd xs)) }
  | x = STRING { Dsl.Str (fst x, snd x) }
  | pos = DOLLAR; xs = STRING*; EOF { let ss = List.map snd xs in
                                      let s = String.concat "" ss in
                                      Dsl.Str (pos, "$" ^ s) }
%%
