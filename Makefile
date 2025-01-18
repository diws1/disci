PREFIX ?= /usr

all:
	@echo Please run \'make install\' to start the installation

install:
	cp -r ascii/ $(DESTDIR)$(PREFIX)/bin
	chmod 755 -R $(DESTDIR)$(PREFIX)/bin/ascii
	@install -Dm755 disci $(DESTDIR)$(PREFIX)/bin/disci
	@echo Installation is complete

uninstall:
	@rm -r $(DESTDIR)$(PREFIX)/bin/ascii
	@rm -f $(DESTDIR)$(PREFIX)/bin/disci
	@echo disci is no longer installed
