i686-elf-gcc -c ./src/kernel.c -o build/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
i686-elf-as ./src/boot.s -o build/boot.o
i686-elf-gcc -T linker.ld -o isodir/boot/mikailis.bin -ffreestanding -O2 -nostdlib build/boot.o build/kernel.o -lgcc
