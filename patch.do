# vim: ft=sh

PATCH="patch -Ns -r - -p1 -i"
# patch () {
# }

redo source

set +e # Allow patches to fail
$PATCH patches/dummy.diff 1> /dev/null

#$PATCH -i patch/st-clipboard-0.8.3.diff 1> /dev/null
#$PATCH -i patch/st-cyclefonts-20210604-4536f46.diff 1> /dev/null
#$PATCH -i patch/st-colors.diff 1> /dev/null
#$PATCH -i patch/st-desktopentry-0.8.4.diff 1> /dev/null
set -e

