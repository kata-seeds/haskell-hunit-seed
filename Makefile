all: dependencies test

test:
	runhaskell *_test.hs

dependencies:
	which runhaskell

.PHONY: all dependencies test
