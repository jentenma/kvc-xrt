
kvcinstall:
	cd userpf; make $@
	cd mgmtpf; make $@

kvcall:
	cd userpf; make $@
	cd mgmtpf; make $@

buildprep:
	# elfutils-libelf-devel is needed on EL8 systems
	sudo yum install -y gcc kernel-{core,devel,modules}-$(KVER) elfutils-libelf-devel

