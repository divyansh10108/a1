all:
		yasm a1.asm -f elf64 -o a1.o
		gcc -no-pie a1.o
