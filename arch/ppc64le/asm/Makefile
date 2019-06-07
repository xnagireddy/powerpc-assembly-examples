# TARGETS := hello hello2
TARGETS := hello2 e1 just-exit hello-world

all: ${TARGETS}

${TARGETS}: %: %.o
	ld -o $@ $^

%.o: %.s
	as -o $@ $^

%-test: %
	./$^

clean:
	rm -f ${TARGETS}

