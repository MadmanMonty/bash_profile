## General shortcuts

# edit this file!
alias profile='vi ~/.bash_profile'

# system monitoring
alias topcpu='ps aux | sort -n +2 | tail -10'  # top 10 cpu processes
alias topmem='ps aux | sort -n +3 | tail -10'  # top 10 memory processes

# disk usage
alias duf='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'

# general shortcuts
alias :='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'

# listing files - I usually end up using 'l' since its quick and easy
alias l='ls -alh'
alias lt='l -t | less'

#copy the working directory into the clipboard
alias cwd='pwd | pbcopy'

#did you know that the Mac doesn't come with a tac command?  Scandalous!
alias tac="sed '1!G;h;\$!d'"

#generate a random pass
alias randpass="openssl rand -base64 12"

## App specific shortcuts

alias sym='cd /c/git/TMS/src/Symfony'
alias symc='php app/console'
alias symcc='php app/console cache:clear'
alias symi='bin/vendors install'

# The essential git commands.
alias gs='git status' #I use this obsessively, I feel blind without it
alias g='git'
alias gb='git checkout -b'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gd='git diff | $EDITOR'
alias ga='git add'
alias gl='git log'

# svn helpers
# after using the wonderful git status, I grew tired of the clutter of svn externals
alias st='svn status | grep -v "^X      " | grep -v "^Performing status on external item"'






