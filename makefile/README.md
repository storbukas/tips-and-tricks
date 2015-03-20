#Makefile#

Instead of compiling your source code manually every time, you can put all your compile commands into one neatly organized `Makefile`

Makefiles are special files that together with the make utility, can build and mangage your projects. In this example, lets assume you have these files:

	- main.c
	- helloworld.c
	- multiply.c

This example will make use of the gcc-compiler. Though you are free to use the one you want.

#make#

`make`

will cause the Makefile (if it exists) to be run. In the case where you have multiple Makefiles you can type

`make -f cool_makefile`

#A basic Makefile#

	structure of a Makefile

	target: dependencies
	[tab]	command

In our example it looks like this (filename: `BasicMakefile`)

	all:
		gcc main.c helloworld.c multiply.c -o our_program

We have no dependencies in our example, and execute the target `all`

	make -f BasicMakefile

#Makefile with dependencies#

If you want your makefile to be able to modify a single file in your project, without having to recompile everything, you can add different targets in your makefile.

	all: our_program

	our_program: main.o helloworld.o multpiply.o
    	gcc main.o helloworld.o multiply.o -o program
	
	main.o: main.c
    	gcc -c main.c

	helloworld.o: helloworld.c
    	gcc -c hello.c
	
	multiply.o: multiply.c
    	gcc -c multiply.c

	clean:
    	rm *o our_program

All of our targets now have dependencies, and in order for the Makefile to execute properly, all dependencies must be met. We also have a target `clean` which does exactly that, cleanes the directory when you want to remove all files created during compilation.

#Variables and comments#

It's possible to have variables in your Makefile, which comes in handy if you have many small snippets of repetive code, or maybe you want it to be easy to change compiler options.

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

As you can see, if we would like to change the compiler or maybe add more compiler flags, we can instead of changing it on multiple locations in our code, just change it once at the top.

#Advanced Makefiles#

This small introduction to Makefiles is just a fraction of what's out there. If you want to learn more, you could read up on the documentation of Make or find yourself a book on the topic.
