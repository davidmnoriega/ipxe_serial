#!/usr/bin/env bash
IPXE="git://git.ipxe.org/ipxe.git"

git clone --depth 1 $IPXE

cd ipxe/src
git apply ../../serial-enable.patch
make bin/undionly.kpxe
