ICON_SIZES = 16x16 22x22 24x24 32x32 36x36 48x48 64x64 72x72 96x96 \
  128x128 192x192 256x256 512x512 scalable
ICON_CONTEXTS = actions animations apps categories devices emblems emotes \
  filesystems intl mimetypes places status stock
STOCK_SUBS = chart code data form image io media navigation net object table text

themedir = $(datadir)/icons/hicolor
dist_theme_DATA = index.theme

EXTRA_DIST = COPYING README NEWS autogen.sh

install-data-hook:
	mkdir -p $(DESTDIR)$(themedir)
	for dir in $(ICON_SIZES); do \
	  for ctxt in $(ICON_CONTEXTS); do \
	    mkdir -p $(DESTDIR)$(themedir)/$$dir/$$ctxt; \
	    if [ "$$ctxt" = "stock" ]; then \
	      for sub in $(STOCK_SUBS); do \
	        mkdir -p $(DESTDIR)$(themedir)/$$dir/$$ctxt/$$sub; \
	      done \
	    fi \
	  done \
	done
	mkdir -p $(DESTDIR)$(datadir)/icons/hicolor/symbolic/apps
