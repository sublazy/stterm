# vim: ft=sh

redo-ifchange config.sh
. ./config.sh

redo source
redo patch

cc -o $3 st.c x.c $FLAGS

