PREFIX=/usr/local
DESTDIR=
INSTALL=install

install:
	mkdir -p $(DESTDIR)$(PREFIX)/icons/default
	$(INSTALL) index.theme $(DESTDIR)$(PREFIX)/icons/default
	for dir in 16x16 22x22 32x32 48x48 64x64 96x96 128x128 scalable; do \
	  for ctxt in actions apps devices filesystems mimetypes; do \
	    mkdir -p $(DESTDIR)$(PREFIX)/icons/default/$$dir/$$ctxt; \
	  done \
        done
