CPP=clang++
CPPFLAGS=-std=c++11 -I/usr/local/include

a.out: main.cc messagedigest.o openssldigest.o stringencode.o
	$(CPP) $(CPPFLAGS) -o a,out main.cc messagedigest.o openssldigest.o stringencode.o

messagedigest.o: messagedigest.cc messagedigest.h
	$(CPP) $(CPPFLAGS) -c messagedigest.cc

openssldigest.o: openssldigest.cc openssldigest.h
	$(CPP) $(CPPFLAGS) -c openssldigest.cc

stringencode.o: stringencode.cc stringencode..h
	$(CPP) $(CPPFLAGS) -c stringencode.cc

clean:
	rm -rf *,o a.out
