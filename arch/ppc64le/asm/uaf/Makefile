TARGETS := e1 e2 e3 e4 e5 e6 e7 e8 e9
OBJECTS := $(patsubst %, %.o, $(TARGETS))

all: ${TARGETS}

${TARGETS}: %: %.o
	ld -o $@ $^

%.o: %.s
	as -o $@ $^

%-test: %
	./$^

clean:
	rm -f ${TARGETS} $(OBJECTS)

