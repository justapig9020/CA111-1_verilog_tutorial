SRC=$(wildcard *.v)
OUTPUT=test.out

all: $(OUTPUT)

test.out: $(SRC)
	iverilog -o $@ $^

wave: $(OUTPUT)
	vvp $<

clean:
	rm -f $(OUTPUT) *.vcd