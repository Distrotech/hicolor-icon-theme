VERSION=0.3
PREFIX=/usr/local
DATADIR=$(PREFIX)/share
DESTDIR=
INSTALL=install

FILES=index.theme  Makefile README ChangeLog

install:
	mkdir -p $(DESTDIR)$(DATADIR)/icons/hicolor
	$(INSTALL) index.theme $(DESTDIR)$(DATADIR)/icons/hicolor
	for dir in 16x16 22x22 32x32 36x36 48x48 64x64 72x72 96x96 128x128 192x192 scalable; do \
	  for ctxt in actions apps devices filesystems mimetypes; do \
	    mkdir -p $(DESTDIR)$(DATADIR)/icons/hicolor/$$dir/$$ctxt; \
	  done \
        done

dist:
	rm -rf hicolor-icon-theme-$(VERSION)
	mkdir hicolor-icon-theme-$(VERSION)
	cp $(FILES) hicolor-icon-theme-$(VERSION)
	tar czvf hicolor-icon-theme-$(VERSION).tar.gz hicolor-icon-theme-$(VERSION)
	rm -rf hicolor-icon-theme-$(VERSION)

tag:
	cvs tag DEFAULT_ICON_THEME_`echo $(VERSION)|sed "s/\./_/"`
