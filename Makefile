all: dependencies test

test:
	cabal test
dependencies:
	which cabal

.PHONY: all dependencies test
