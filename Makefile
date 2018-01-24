# for debug add -g -O0 to line below
CFLAGS+=-pthread -O2 -Wall -Wextra -Wpedantic -Wstrict-overflow -fno-strict-aliasing -std=gnu11
prefix=/usr/local/bin

all: prepare
	${CC} $(CFLAGS) src/main.c src/fiche.c -o out/fiche

static: prepare
	${CC} $(CFLAGS) -static -w src/main.c src/fiche.c -o out/fiche

install: fiche
	install -m 0755 out/fiche $(prefix)

prepare:
	mkdir -p out

clean:
	rm -f fiche

.PHONY: clean
