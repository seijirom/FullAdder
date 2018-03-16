#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /mnt/c/Users/seijirom/AppData/Roaming/ALB/qflow_assistant/Full_Adder_HEAD
#-------------------------------------------

# /usr/local/share/qflow/scripts/synthesize.sh /mnt/c/Users/seijirom/AppData/Roaming/ALB/qflow_assistant/Full_Adder_HEAD fa /mnt/c/Users/seijirom/AppData/Roaming/ALB/qflow_assistant/Full_Adder_HEAD/source/fa.v || exit 1
/usr/local/share/qflow/scripts/placement.sh -d /mnt/c/Users/seijirom/AppData/Roaming/ALB/qflow_assistant/Full_Adder_HEAD fa || exit 1
# /usr/local/share/qflow/scripts/vesta.sh /mnt/c/Users/seijirom/AppData/Roaming/ALB/qflow_assistant/Full_Adder_HEAD fa || exit 1
/usr/local/share/qflow/scripts/router.sh /mnt/c/Users/seijirom/AppData/Roaming/ALB/qflow_assistant/Full_Adder_HEAD fa || exit 1
# /usr/local/share/qflow/scripts/vesta.sh -d /mnt/c/Users/seijirom/AppData/Roaming/ALB/qflow_assistant/Full_Adder_HEAD fa || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh /mnt/c/Users/seijirom/AppData/Roaming/ALB/qflow_assistant/Full_Adder_HEAD fa || exit 1
# /usr/local/share/qflow/scripts/display.sh /mnt/c/Users/seijirom/AppData/Roaming/ALB/qflow_assistant/Full_Adder_HEAD fa || exit 1
