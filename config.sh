# st version
VERSION="0.8.4"

DESTDIR=""
PREFIX="/tmp/local"
MANPREFIX="$PREFIX/share/man"

X11INC=/usr/include/X11
X11LIB=/usr/lib

INCS="-I$X11INC \
    $(pkg-config --cflags fontconfig) \
    $(pkg-config --cflags freetype2)"

LIBS="-L$X11LIB -lm -lrt -lX11 -lutil -lXft \
    $(pkg-config --libs fontconfig) \
    $(pkg-config --libs freetype2)"

CFLAGS="-O0"
STCPPFLAGS="-DVERSION=\"$VERSION\" -D_XOPEN_SOURCE=600"
STCFLAGS="$INCS $STCPPFLAGS $CPPFLAGS $CFLAGS"
STLDFLAGS="$LIBS $LDFLAGS"

FLAGS="$STCFLAGS $STCPPFLAGS $STLDFLAGS"

