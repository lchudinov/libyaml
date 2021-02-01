CC:=xlclang
ENHANCED_ASCII:=-qascii -D_ENHANCED_ASCII_EXT=0xFFFFFFFF
DEFINES:=
CC_FLAGS:=-I../include $(DEFINES) $(ENHANCED_ASCII)
LIBS:=-L.. -lyaml

BINARIES:=example-deconstructor example-deconstructor-alt example-reformatter example-reformatter-alt run-dumper run-emitter run-emitter-test-suite run-loader run-parser run-parser-test-suite run-scanner test-reader test-version

all:	$(BINARIES)

example-deconstructor:	example-deconstructor.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
example-deconstructor-alt:	example-deconstructor-alt.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
example-reformatter:	example-reformatter.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
example-reformatter-alt:	example-reformatter-alt.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
run-dumper:	run-dumper.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
run-emitter:	run-emitter.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
run-emitter-test-suite:	run-emitter-test-suite.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
run-loader:	run-loader.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
run-parser:	run-parser.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
run-parser-test-suite:	run-parser-test-suite.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
run-scanner:	run-scanner.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
test-reader:	test-reader.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)
test-version:	test-version.c
	$(CC) $(CC_FLAGS) -o $@ $< $(LIBS)

clean:	
	rm -fv $(BINARIES) *.o