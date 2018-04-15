#!/bin/bash
patch -Np1 -i "${SHED_PKG_PATCH_DIR}/non-x86-compilation.patch"
make -j $SHED_NUM_JOBS curses || exit 1
install -Dm755 bin/brogue "${SHED_FAKE_ROOT}/usr/bin/brogue"


