### Aliases goes here ###
alias bc='brew cask'
alias bcs='brew cask search'

# Gets external ip
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Show/hide icons on desktop
alias desktophide="defaults write com.apple.finder CreateDesktop false && killall Finder"
alias desktopshow="defaults write com.apple.finder CreateDesktop true && killall Finder"
### ###

# Adding qfc autocomplete
[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"

# Remove duplicates in bash hisory
export HISTCONTROL=ignoreboth:erasedups

