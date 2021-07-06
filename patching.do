# vim: ft=sh

apply () {
    pathname="patches/$1"
    patch -Ns -r - -p1 -i $pathname 1>&2
}

redo sources

set +e # Allow patches to fail
apply st-clipboard-0.8.3.diff
apply st-cyclefonts-20210604-4536f46.diff
apply st-colors.diff
set -e

