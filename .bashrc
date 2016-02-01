
### Aliases goes here ###
alias mar='ssh mar'
alias stue='ssh stue'
alias bc='brew cask'
alias bcs='brew cask search'

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
### ###

# Adding qfc autocomplete
[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"
