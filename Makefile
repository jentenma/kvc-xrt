ifndef DESTDIR
DESTDIR=/usr
endif
ifndef CONFDIR
CONFDIR=/etc
endif

install:
	install -v -m 644 xrt-lib.sh $(DESTDIR)/lib/kvc/
	install -v -m 644 xrt.conf $(CONFDIR)/kvc/
	install -v -m 755 xrt-wrapper.sh $(DESTDIR)/lib/kvc/

