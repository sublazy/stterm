# vim: ft=sh
# Redirect stdout (echo and patch) to stderr
exec >&2

apply () {
    pathname="patches/$1"
    echo "-- Applying patch: $1"
    patch -N -r - --no-backup-if-mismatch -p1 -i $pathname
}

# We restore clean sources, so that patches apply cleanly.
redo sources

apply st-clipboard-0.8.3.diff
apply st-cyclefonts-20210604-4536f46.diff
apply st-hardshell.diff

