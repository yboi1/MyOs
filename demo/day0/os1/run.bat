@echo off
nasm -f bin helloos.asm -o helloos.img
qemu-system-i386 helloos.img