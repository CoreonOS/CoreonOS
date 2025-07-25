find . -print0 | cpio --null -ov --format=newc | gzip -9 > ../initramfs.cpio.gz

cd ..
qemu-system-x86_64 \
      -kernel arch/x86/boot/bzImage \
      -initrd initramfs.cpio.gz \
      -append "console=tty0" \
      -vga std