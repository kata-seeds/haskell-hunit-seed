all: dependencies test

test:
	cabal test

dependencies:
	cabal install --avoid-reinstalls --enable-tests

.PHONY: all dependencies test
