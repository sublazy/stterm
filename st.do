# vim: ft=sh

redo-ifchange config.sh
. ./config.sh

redo sources
redo patching

cc -o $3 st.c x.c $FLAGS

