VERSION=0.1
PREFIX=/usr/local
DESTDIR=
INSTALL=install

FILES=index.theme  Makefile README ChangeLog

install:
	mkdir -p $(DESTDIR)$(PREFIX)/icons/default
	$(INSTALL) index.theme $(DESTDIR)$(PREFIX)/icons/default
	for dir in 16x16 22x22 32x32 48x48 64x64 96x96 128x128 scalable; do \
	  for ctxt in actions apps devices filesystems mimetypes; do \
	    mkdir -p $(DESTDIR)$(PREFIX)/icons/default/$$dir/$$ctxt; \
	  done \
        done

dist:
	rm -rf default-icon-theme-$(VERSION)
	mkdir default-icon-theme-$(VERSION)
	cp $(FILES) default-icon-theme-$(VERSION)
	tar czvf default-icon-theme-$(VERSION).tar.gz default-icon-theme-$(VERSION)
	rm -rf default-icon-theme-$(VERSION)

tag:
	cvs tag DEFAULT_ICON_THEME_`echo $(VERSION)|sed "s/\./_/"`
