.PHONY: all clean

TARGETS = code128title57x32-example.pdf  code128title57x32-other_example.pdf code128title2L57x32-example.pdf code128title57x32Cables-example.pdf code128title57x32Cables-other_example.pdf I2of5title57x32Cables-example.pdf

all: $(TARGETS)

code128title2L57x32%.pdf: code128title2L57x32%.csv
	glabels-3-batch -i "$<" -o "$@" code128title2L57x32.glabels

code128title57x32Cables%.pdf: code128title57x32Cables%.csv
	glabels-3-batch -i "$<" -o "$@" code128title57x32Cables.glabels

code128title57x32%.pdf: code128title57x32%.csv
	glabels-3-batch -i "$<" -o "$@" code128title57x32.glabels

I2of5title57x32Cables%.pdf: I2of5title57x32Cables%.csv
	glabels-3-batch -i "$<" -o "$@" I2of5title57x32Cables.glabels

clean:
	rm $(TARGETS)
