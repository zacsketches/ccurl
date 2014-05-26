

LDLIBS = -lcurl
#CXXFLAGS = -Wall -g -std=c++0x
CXXFLAGS = -Wall -g


.PHONY: all

all: test

test: curl.o test.o
	$(CXX) $^ $(LDFLAGS) $(LDLIBS) -o $@

test.o curl.o: curl.hh

clean:
		rm *.o test