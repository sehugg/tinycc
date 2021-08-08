#!/bin/sh
./configure
make cross
WASISDK="$HOME/wasi-sdk-12.0"
CC="$WASISDK/bin/clang --sysroot $WASISDK/share/wasi-sysroot -D__WASI__ -static -DCONFIG_TCC_STATIC -DCONFIG_TCC_SEMLOCK=0" # -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I. "
./configure \
	--cpu="wasm" \
	--cc="$CC" \
	--ar="$HOME/wasi-sdk-12.0/bin/ar" \
	--enable-cross \
	--enable-static
make cross


