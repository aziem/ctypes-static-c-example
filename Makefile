foo.o: foo.c
	gcc -c -fPIC foo.c -o foo.o

foo_ml.native: foo_ml.ml foo.o
	ocamlfind ocamlopt -linkpkg -package ctypes,ctypes.foreign -cclib -Wl,-E foo.o foo_ml.ml -o foo_ml.native

clean:
	rm foo.o
	rm foo_ml.native
	rm foo_ml.cm*
