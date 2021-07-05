redo-ifchange config.sh
. ./config.sh

# Copy vanilla source files to working dir, because we need to patch them.
cp st-vanilla/*.c ./
cp st-vanilla/*.h ./

# Apply patches

cc -o $3 st.c x.c $FLAGS

