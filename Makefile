.PHONY: all clean

TARGETS = code128title57x32-example.pdf \
          code128title57x32-other_example.pdf \
          code128title2L57x32-example.pdf \
          code128title57x32CablesL-example.pdf \
          code128title57x32CablesL-other_example.pdf \
          I2of5title57x32CablesL-example.pdf \
          code128title57x32CablesP-example.pdf \
          code128title57x32CablesP-other_example.pdf \
          I2of5title57x32CablesP-example.pdf

all: $(TARGETS)

code128title2L57x32%.pdf: code128title2L57x32%.csv
	glabels-3-batch -i "$<" -o "$@" code128title2L57x32.glabels

code128title57x32CablesL%.pdf: code128title57x32Cables%.csv
	glabels-3-batch -i "$<" -o "$@" code128title57x32CablesL.glabels

code128title57x32CablesP%.pdf: code128title57x32Cables%.csv
	glabels-3-batch -i "$<" -o "$@" code128title57x32CablesP.glabels

code128title57x32%.pdf: code128title57x32%.csv
	glabels-3-batch -i "$<" -o "$@" code128title57x32.glabels

I2of5title57x32CablesL%.pdf: I2of5title57x32Cables%.csv
	glabels-3-batch -i "$<" -o "$@" I2of5title57x32CablesL.glabels

I2of5title57x32CablesP%.pdf: I2of5title57x32Cables%.csv
	glabels-3-batch -i "$<" -o "$@" I2of5title57x32CablesP.glabels

clean:
	rm $(TARGETS)
