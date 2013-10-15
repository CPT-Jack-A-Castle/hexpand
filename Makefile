CC        = gcc
CFLAGS    = -Wall -g
LDFLAGS   = 

SOURCES   = hexpand.c
OBJECTS   = ${SOURCES:.c=.o}

EXECUTABLE = hexpand

CFLAGS    += $(shell pkg-config --cflags openssl)
LDFLAGS   += $(shell pkg-config --libs openssl)

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(SOURCES)
	$(CC) $(SOURCES) -o $@ $(LDFLAGS) $(CFLAGS)

clean:
	rm $(EXECUTABLE)
