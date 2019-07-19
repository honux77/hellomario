hellomario.o: hellomario.asm
	ca65 -o $@ $<

all: hellomario.o
	ld65 -o hellomario.nes $< -t nes

clean:
	rm -rf *.nes *.o

