#!/bin/sh
CC="$HOME/wasi-sdk-12.0/bin/clang --sysroot $HOME/wasi-sdk-12.0/share/wasi-sysroot -D__WASI__ -static -DCONFIG_TCC_STATIC" # -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I. "
./configure \
	--cc="$CC" \
	--ar="$HOME/wasi-sdk-12.0/bin/ar" \
	--enable-cross \
	--enable-static
make clean
make	
#$CC arm-*.c tcc*.c -o foo

