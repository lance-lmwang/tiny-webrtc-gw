LIB_OPENSSL=./lib
INC_OPENSSL=./include
INC_LIBSRTP=./libsrtp/build/include
LDARGS=-static -lpthread -lcrypto -lssl -lcrypto -lpthread -lcrypto -lsrtp -lm

all:
	gcc -DDTLS_BUILD_WITH_BORINGSSL=1 -o webrtc_gw -I${INC_LIBSRTP} -I${INC_OPENSSL} -L${LIB_OPENSSL} stubs.c stun_responder.c -g ${LDARGS};
