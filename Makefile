%.html: fairytale.ml %.ml
	make -C tml tml.cmo
	make -C tml xmlext.cmo
	ocamlfind ocamlc -package tyxml -I tml -linkpkg xmlext.cmo tml.cmo $(addsuffix ',$(addprefix ',$(subst ','\'',$^)))
	./a.out > $(addsuffix ',$(addprefix ',$(subst ','\'',$@)))
