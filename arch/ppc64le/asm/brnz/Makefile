TARGETS := just-exit hello-world
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

