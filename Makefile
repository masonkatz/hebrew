.PHONY: build clean
default: build

SOURCE = vocab.txt
FILTER = ./list2stack

build: $(SOURCE)
	for x in $?; do $(FILTER) $$x; done

clean:
	-rm -f *.stack


