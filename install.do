redo-ifchange st

. ./config.sh

mkdir -p ${DESTDIR}${PREFIX}/bin
cp -f st ${DESTDIR}${PREFIX}/bin
chmod 755 ${DESTDIR}${PREFIX}/bin/st
mkdir -p ${DESTDIR}${MANPREFIX}/man1
sed "s/VERSION/${VERSION}/g" < st-vanilla/st.1 > ${DESTDIR}${MANPREFIX}/man1/st.1
chmod 644 ${DESTDIR}${MANPREFIX}/man1/st.1
tic -sx st-vanilla/st.info
mkdir -p ${DESTDIR}${PREFIX}/share/applications
cp -f st.desktop ${DESTDIR}${PREFIX}/share/applications

