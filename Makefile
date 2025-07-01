flags=-O2 -Wall -std=c2x
ldflags=

all: clean rvm

rvm: rvm.o
        cc ${flags} $^ -o $@ ${ldflags}

rvm.o: rvm.c
        cc ${flags} -c $^

clean:
        rm -f *.o rvm
