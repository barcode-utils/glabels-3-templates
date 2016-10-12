.PHONY: all clean

TARGETS = code128title57x32-example.pdf  code128title57x32-other_example.pdf code128title2L57x32-example.pdf

all: $(TARGETS)

code128title2L57x32%.pdf: code128title2L57x32%.csv
	glabels-3-batch -i "$<" -o "$@" code128title2L57x32.glabels

code128title57x32%.pdf: code128title57x32%.csv
	glabels-3-batch -i "$<" -o "$@" code128title57x32.glabels

clean:
	rm $(TARGETS)
