CC:=xlclang
MAJOR:=0
MINOR:=2
PATCH:=5
ENHANCED_ASCII:=-qascii -D_ENHANCED_ASCII_EXT=0xFFFFFFFF
VERSION:=\"$(MAJOR).$(MINOR).$(PATCH)\"
DEFINES:=-DYAML_VERSION_MAJOR=$(MAJOR) -DYAML_VERSION_MINOR=$(MINOR) -DYAML_VERSION_PATCH=$(PATCH) -DYAML_VERSION_STRING=$(VERSION)
CC_FLAGS:=-I./include -I./src -D_XOPEN_SOURCE_EXTENDED=1 $(DEFINES) $(ENHANCED_ASCII)
LIBYAML:=libyaml.a

OBJS:=api.o reader.o scanner.o parser.o loader.o writer.o emitter.o dumper.o

$(LIBYAML):	$(OBJS)
	ar rcs $@ $^

%.o:	src/%.c
	$(CC) $(CC_FLAGS) -c $<	

clean:	
	rm -f $(LIBYAML) *.o