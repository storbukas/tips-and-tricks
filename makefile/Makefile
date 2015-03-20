# This is a comment, and it will not be interpreted by `make`
COMPILER=gcc # The compiler we want to use

COMPILER_FLAGS = -c -Wall

all: our_program

our_program: main.o helloworld.o multpiply.o
	$(COMPILER) main.o helloworld.o multiply.o -o program

main.o: main.c
	$(COMPILER) $(COMPILER_FLAGS) main.c

helloworld.o: helloworld.c
	$(COMPILER) $(COMPILER_FLAGS) hello.c

multiply.o: multiply.c
	$(COMPILER) $(COMPILER_FLAGS) multiply.c

clean:
	rm *o our_program
