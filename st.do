# vim: ft=sh

redo-ifchange config.sh
. ./config.sh

redo sources
redo patching

echo Using header: $HDR_APPEARANCE 1>&2

cc -o $3 st.c x.c $FLAGS

