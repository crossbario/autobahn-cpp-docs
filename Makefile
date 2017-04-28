.PHONY: docs clean

docs:
	doxygen

clean:
	rm -rf docs/*
