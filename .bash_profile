
#Change the prompt
export PS1="\W \$ "

source ~/.bashrc
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
## export PATH=/Users/henrik/Library/Android/sdk/platform-tools:$PATH

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
        source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
        source /etc/bash_completion;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;


## Colors in terminal
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# Adding qfc autocomplete
[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"



test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
