#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /mnt/c/Users/seijirom/work/FullAdder_or1u
#-------------------------------------------

/usr/local/share/qflow/scripts/synthesize.sh /mnt/c/Users/seijirom/work/FullAdder_or1u fa /mnt/c/Users/seijirom/work/FullAdder_or1u/source/fa.v || exit 1
/usr/local/share/qflow/scripts/placement.sh -d /mnt/c/Users/seijirom/work/FullAdder_or1u fa || exit 1
# /usr/local/share/qflow/scripts/vesta.sh /mnt/c/Users/seijirom/work/FullAdder_or1u fa || exit 1
/usr/local/share/qflow/scripts/router.sh /mnt/c/Users/seijirom/work/FullAdder_or1u fa || exit 1
# /usr/local/share/qflow/scripts/vesta.sh -d /mnt/c/Users/seijirom/work/FullAdder_or1u fa || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh /mnt/c/Users/seijirom/work/FullAdder_or1u fa || exit 1
# /usr/local/share/qflow/scripts/display.sh /mnt/c/Users/seijirom/work/FullAdder_or1u fa || exit 1
