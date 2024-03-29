INC = -I/usr/local/include -I/usr/local/cuda-11.2/include/ -I/usr/share/CUnit/include/
LIB = -L/usr/local/lib -L/usr/local/cuda-11.2/lib64/
NVCC = /usr/local/cuda-11.2/bin/nvcc
LIBS = -lcudart -lcublas /usr/share/CUnit/lib/libcunit.a

all: runtest.c util.c asgn1b.o
	gcc runtest.c util.c asgn1b.o $(INC) $(LIB) $(LIBS) -o runtest -std=c99 -O3
asgn1b.o: asgn1b.cu
	$(NVCC) -o asgn1b.o -c asgn1b.cu $(INC) -O3 

clean:
	rm -rf runtest 
	rm -rf asgn1b.o


