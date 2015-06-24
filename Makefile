
PREFIX = /usr/local
BINARIES = $(wildcard bin/*)

install: $(BINARIES)


$(PREFIX)/bin/%: bin/%
	@cp -f $< $@
	@chmod +x $@

.PHONY: install