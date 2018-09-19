###################################
# Author: vliubko@student.unit.ua #
###################################

/bin/echo -n "Before Library clean: $(du -sh ~/Library 2>/dev/null | awk {'print $1'})"
/bin/echo -n $'\t\e[38;5;196m'
/bin/echo "$(df -h | grep "$(whoami)" | awk {'print $5'})"
/bin/echo -n $'\e[0m'
rm -rf ~/Library/*.42_cache*
/bin/echo -n " After Library clean: $(du -sh ~/Library 2>/dev/null | awk {'print $1'})"
/bin/echo -n $'\t\e[38;5;46m'
/bin/echo "$(df -h | grep "$(whoami)" | awk {'print $5'})"

/bin/echo -n $'\n\e[38;5;226mFree space for: '
/bin/echo "$(whoami)"
/bin/echo -n "$(df -h | grep "$(whoami)" | awk {'print $4'})"
/bin/echo $' from 5GB' 
/bin/echo $'\n\t\e[38;5;226mGarbage removed!\e[0m'
