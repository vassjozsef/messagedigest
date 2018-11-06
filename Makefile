CPP=clang++
CPPFLAGS=-std=c++11 -I/usr/local/opt/openssl\@1.1/include/ -DWEBRTC_POSIX -DWEBRTC_MAC
LDFLAGS=-L/usr/local/opt/openssl\@1.1/lib -lssl -lcrypto

#CPPFLAGS=-std=c++11 -I/usr/local/include -DWEBRTC_POSIX -DWEBRTC_MAC
#LDFLAGS=-L/usr/local/lib -lssl -lcrypto

a.out: main.o messagedigest.o openssldigest.o stringencode.o stringutils.o
	$(CPP) -o a.out main.o messagedigest.o openssldigest.o stringencode.o $(LDFLAGS)

main.o: main.cc
	$(CPP) $(CPPFLAGS) -c main.cc

messagedigest.o: messagedigest.cc messagedigest.h
	$(CPP) $(CPPFLAGS) -c messagedigest.cc

openssldigest.o: openssldigest.cc openssldigest.h
	$(CPP) $(CPPFLAGS) -c openssldigest.cc

stringencode.o: stringencode.cc stringencode.h
	$(CPP) $(CPPFLAGS) -c stringencode.cc

stringutils.o: stringutils.cc stringutils.h
	$(CPP) $(CPPFLAGS) -c stringutils.cc

clean:
	rm -rf *,o a.out
