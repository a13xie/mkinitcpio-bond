VERSION	  = $(shell git describe)
DISTFILES = Makefile bond_install bond_hook

install:
	install -m 644 -D bond_install $(DESTDIR)/usr/lib/initcpio/install/bond
	install -m 644 -D bond_hook $(DESTDIR)/usr/lib/initcpio/hooks/bond

uninstall:
	$(RM) $(DESTDIR)/usr/lib/initcpio/install/bond
	$(RM) $(DESTDIR)/usr/lib/initcpio/hooks/bond

dist:
	mkdir mkinitcpio-bond-$(VERSION)
	cp $(DISTFILES) mkinitcpio-bond-$(VERSION)
	tar czf mkinitcpio-bond-$(VERSION).tar.gz mkinitcpio-bond-$(VERSION)
	rm -rf mkinitcpio-bond-$(VERSION)
