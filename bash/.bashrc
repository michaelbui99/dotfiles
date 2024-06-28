# Aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Environment
#PATH="/usr/local/bin:$PATH"
#export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
#export PATH=$PATH:$HOME/.cargo/bin
#export PATH="$PATH:$HOME/.dotnet/tools"
#export PATH=$PATH:$(go env GOPATH)/bin
#export PATH="$PATH:$HOME/.local/bin"


# git auto-complete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# GPG
export GPG_TTY=$(tty)

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

. "$HOME/.cargo/env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mibui/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/mibui/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mibui/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/mibui/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Start up 
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init bash)"
eval "$(zoxide init bash)"

# iterm2 shell integration. SHOULD BE LOADED LAST!
source ~/.iterm2_shell_integration.bash

