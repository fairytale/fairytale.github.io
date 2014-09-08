type t1 = Str of Lexing.position * string
        | Expr of Lexing.position * string
type t = t1 list
