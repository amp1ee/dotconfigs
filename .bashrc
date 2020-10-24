#
# Configuration for WSL Ubuntu
#

#PS1='\[\033[1;32m\]\h\[\033[31m\]:\[\033[1;33m\]\W\[\033[31m\]{$?}$(__git_ps1)\$\[\033[37m\] '
PS1="\[\033[s\033[0;0H\033[0;41m\033[K\033[1;33m\t\033[0m\033[u\]<\u@\h \W>\$ "

export DISPLAY='localhost:0.0'

# Aliases
alias gccf='gcc -Wall -Wextra -Werror'
alias grep='grep --color '
alias ls='ls --color=auto'
alias l='ls -CF'
alias ll='ls -l'
alias la='ls -A'
alias cmd='/mnt/c/Windows/System32/cmd.exe /c'
alias thunder='/usr/bin/thunderbird &>/dev/null & disown'

# Go home at start-up
cd ~

# Launch Xming server
_xlaunch=/mnt/c/Program\ Files\ \(x86\)/Xming/XLaunch.exe
if [ $SHLVL -eq 1 ] ; then
	"$_xlaunch" -run $(cmd "echo | set /p=%USERPROFILE%")\\Desktop\\config.xlaunch &
	#cmd cls
fi

# Quit Xming at exit
trap killxming EXIT
killxming () {
	#if [ $SHLVL = 1 ]; then
		cmd "msg %username% Killing Xming server..."
		cmd taskkill /T /F /IM "XLaunch.exe"
	#fi
}
