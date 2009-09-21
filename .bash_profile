# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:/Users/mw/bin:/usr/local/mysql/bin:/usr/local/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
 
# Terminal colours (after installing GNU coreutils)
NM="\[\033[0;38m\]" #means no background and white lines
HI="\[\033[0;37m\]" #change this for letter colors
HII="\[\033[0;32m\]" #change this for letter colors
SI="\[\033[1;34m\]" #this is for the current directory
LG="\[\033[1;30m\]" #light gray
IN="\[\033[0m\]"

#PS1="$NM[ $HII\u@\h $SI\w$NM]\\$ $IN"
PS1="$LG[ $HII\u@\[ecomac $SI\w $LG]$NM\\$ $IN"
PS2="> " 

if [ "$TERM" != "dumb" ]; then
    export LS_OPTIONS='--color=auto'
    eval `dircolors ~/.dir_colors`
fi
 
# Useful aliases, shell
alias ls='ls $LS_OPTIONS -hF'
alias ll='ls $LS_OPTIONS -lhF'
alias l='ls $LS_OPTIONS -lahF'
alias cd..="cd .."
alias c="clear"
alias e="exit"
alias ssh="ssh -X"
alias ..="cd .."
alias hosts="mate /etc/hosts"
alias vhosts="mate /Users/mw/Sites/conf/httpd-vhosts.conf"
alias profile="mate ~/.bash_profile"
alias grep='grep --color'
alias p="ping"
alias g="git"

# Useful aliases, webdev
alias mysqlstart='sudo /usr/local/mysql/bin/mysqld_safe &'
alias mysqlstop='/usr/local/mysql/bin/mysqladmin -u root -pnatya shutdown'
alias apachestart='sudo /opt/local/apache2/bin/apachectl start'
alias apache='sudo /opt/local/apache2/bin/apachectl graceful'
alias apachestop='sudo /opt/local/apache2/bin/apachectl graceful-stop'
alias apachelog='cd /opt/local/apache2/logs; ls'
alias apacheconf='sudo mate /opt/local/apache2/conf/httpd.conf'

alias ys="cd ~/Sites/yogasamgam.com/site/httpdocs; l"
alias ry="ssh root@ys"

#fortune
uptime
