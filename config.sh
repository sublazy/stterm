# st version
VERSION="0.8.4"

DESTDIR=""
PREFIX="/usr"
MANPREFIX="$PREFIX/share/man"

X11INC=/usr/include/X11
X11LIB=/usr/lib

[ -e $HOME/dotfiles/st/appearance.h ] \
    && HDR_APPEARANCE="$HOME/dotfiles/st/appearance.h" \
    || HDR_APPEARANCE="appearance.def.h"

INCS="-I$X11INC \
    $(pkg-config --cflags fontconfig) \
    $(pkg-config --cflags freetype2)"

LIBS="-L$X11LIB -lm -lrt -lX11 -lutil -lXft \
    $(pkg-config --libs fontconfig) \
    $(pkg-config --libs freetype2)"

CFLAGS="-O3"
STCPPFLAGS="-DVERSION=\"$VERSION\" -D_XOPEN_SOURCE=600"
STCFLAGS="$INCS $STCPPFLAGS $CPPFLAGS $CFLAGS \
    -D CFG_APPEARANCE=\"$HDR_APPEARANCE\" "
STLDFLAGS="$LIBS $LDFLAGS"

FLAGS="$STCFLAGS $STCPPFLAGS $STLDFLAGS"

