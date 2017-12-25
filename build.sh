#!/bin/bash
patch -Np1 -i "${SHED_PATCHDIR}/non-x86-compilation.patch"
make -j $SHED_NUMJOBS curses || exit 1
install -Dm755 bin/brogue "${SHED_FAKEROOT}/usr/bin/brogue"


