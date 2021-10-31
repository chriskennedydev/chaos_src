CC = gcc
CFLAGS = -Wall -Wfatal-errors -Wshadow -Wextra -O2
BUILDDIR = build
BINARY = cs
FILES = *.c
SRCDIR = src
INSTDIR = /usr/local/bin

all: clean comp

comp:
	$(CC) -o $(BUILDDIR)/$(BINARY) $(SRCDIR)/$(FILES) $(CFLAGS)

run:
	@./$(BUILDDIR)/$(BINARY)

clean:
	@rm -f $(BUILDDIR)/$(BINARY)

install:
	mv $(BUILDDIR)/$(BINARY) $(INSTDIR)

