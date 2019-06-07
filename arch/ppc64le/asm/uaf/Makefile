TARGETS := e1 e2 e3 e4 e5

all: ${TARGETS}

${TARGETS}: %: %.o
	ld -o $@ $^

%.o: %.s
	as -o $@ $^

%-test: %
	./$^

clean:
	rm -f ${TARGETS}

