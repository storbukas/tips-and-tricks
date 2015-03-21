# Remote SSH
alias ssh-hostname="ssh user@192.168.0.100"

# System
alias temp="/opt/vc/bin/vcgencmd measure_temp"  # raspberry pi
alias memory="df -h /dev/root"                  # raspberry pi
alias mkdir="mkdir -pv"
alias kernels="rpm -q kernel"
alias startup="gnome-session-properties &"
alias echo="echo -e"
alias killalljobs="kill -9 $(jobs -p)"

# Console
alias c="clear"

# Change directory
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd..="cd .."
alias home="cd ~"

# Quick navigation
alias shell="cd ~/Dropbox/scripts"
alias work="cd ~/workspace"
alias school="cd ~/Documents/School"

# Directory listing
alias ls="ls --color=auto"
alias ll="ls -la"
alias l.="ls -d .* --color=auto"

# Applications
alias bc="bc -l"

# Shortcuts
alias h="history"
alias j="jobs -l"

# Nano
alias nano="nano -icT 4"
alias snano="sudo nano -icT 4"
alias edit="sudo nano -icT 4"

# Ping
alias ping="ping -c 5"
alias fastping="ping -c 100 -s.2"

# Network
alias ports="netstat -tulanp"
alias ipconfig="ifconfig"
alias wget="wget -c"
alias wifiscan="sudo iwlist wlan0 scan | grep Frequency | sort | uniq -c | sort -n"

# Wake On Lan
alias wakeupnas="wakeonlan a0:21:b0:c1:f4:00"

# Package manager
alias update="sudo apt-get update && sudo apt-get upgrade"
alias install="sudo apt-get install"
alias dist-upgrade="sudo apt-get dist-upgrade"

# root
alias root="sudo -i"
alias su="sudo -i"

# reboot/poweroff
alias reboot="sudo reboot"
alias shutdown="sudo shutdown -h now"

# Router
alias rebootlinksys="curl -u 'admin:my-super-password' 'http://192.168.1.2/setup.cgi?todo=reboot'"

# Git
alias linecount="git ls-files | xargs wc -l"

# Star Wars
alias star-wars="telnet towel.blinkenlights.nl"

# Benchmark
alias benchmark="sysbench --test=cpu --num-threads=8 --cpu-max-prime=20000 run"
