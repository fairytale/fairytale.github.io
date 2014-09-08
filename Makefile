%.html: fairytale.ml %.ml
	make -C tml tml.cmo
	make -C tml xmlext.cmo
	ocamlfind ocamlc -package tyxml -I tml -I . -pp "camlp4o ./dsl.cmo lexer.cmo parser.cmo ./pa_fairytale.cmo" -linkpkg xmlext.cmo tml.cmo $(addsuffix ',$(addprefix ',$(subst ','\'',$^)))
	./a.out > $(addsuffix ',$(addprefix ',$(subst ','\'',$@)))
