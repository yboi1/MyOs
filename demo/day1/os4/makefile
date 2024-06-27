SHELL=cmd.exe
ipl.img:
	nasm -o ipl.img ipl.nas
myos.img:ipl.img
	dd if=ipl.img of=myos.img count=1 bs=512
	dd if=/dev/zero of=myos.img bs=512 seek=1 skip=1 count=2879
run:myos.img
	qemu-system-i386 -drive file=myos.img,if=floppy
clean:
	rm ipl.img myos.img