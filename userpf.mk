
kvcall:
	@echo $(PWD)
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules

kvcinstall:
	sudo install -v -m 755 -d /lib/modules/$(KVER)/
	sudo install -v -m 644 xocl.ko  /lib/modules/$(KVER)/xocl.ko
	install -m 644 99-xocl.rules /etc/udev/rules.d
	depmod -a
