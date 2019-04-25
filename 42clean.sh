###################################
# Author: vliubko@student.unit.ua #
###################################
echo $'\e[96m== 42clean.sh ==\n'
BEFORE="$(df -h | grep "$(whoami)" | awk {'print $4'})"
rm -rf $HOME/Library/*42_cache*;
rm -rf $HOME/.*42_cache*;
rm -rf $HOME/.*zcompdump*;
/bin/echo -n $'\e[0mCleaning space for '
/bin/echo $'\e[40;38;5;82m' "$(whoami)" $'\e[0m'
/bin/echo $'\e[38;5;196mFree space Before:' $BEFORE
AFTER="$(df -h | grep "$(whoami)" | awk {'print $4'})"
/bin/echo $'\e[38;5;46mFree space After:' $AFTER

/bin/echo $'\n\e[38;5;226m== Garbage removed! ==\e[0m'
