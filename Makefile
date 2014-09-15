dsl.cmo: dsl.ml
	ocamlc -c dsl.ml

parser.ml: parser.mly
	menhir parser.mly

lexer.ml: lexer.mll
	ocamllex lexer.mll

parser.cmo: parser.ml parser.mli
	ocamlc -c parser.mli
	ocamlc -c parser.ml

lexer.cmo: lexer.ml
	ocamlc -c lexer.ml

pa_fairytale.cmo:
	ocamlfind ocamlc -package camlp4.extend,camlp4.quotations -syntax camlp4o -c pa_fairytale.ml

%.html: fairytale.ml %.ml
	make dsl.cmo
	make parser.cmo
	make lexer.cmo
	make -C tml tml.cmo
	make -C tml xmlext.cmo
	ocamlfind ocamlc -package tyxml -I tml -I . -pp "camlp4o ./dsl.cmo lexer.cmo parser.cmo ./pa_fairytale.cmo" -linkpkg xmlext.cmo tml.cmo $(addsuffix ',$(addprefix ',$(subst ','\'',$^)))
	./a.out > $(addsuffix ',$(addprefix ',$(subst ','\'',$@)))
