ARCH=$(uname)

export do="--dry-run=client -o yaml"
export KUBECONFIG=./kubeconfig
export DOTNET_ROOT=$HOME/Tools/dotnet8
if [[ "$ARCH" = "Darwin" ]]; then
  export EDITOR=/usr/local/bin/nvim
else
  export EDITOR=/usr/bin/nvim
fi


# Aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# functions
if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi

# git auto-complete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
if [ -f /usr/share/bash-completion/completions/git ]; then
  source /usr/share/bash-completion/completions/git
fi

# NVM 
export NVM_DIR="$HOME/.nvm"
if [[ "$ARCH" = "Darwin" ]]; then 
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
 fi

if [[ "$ARCH" = "Darwin" ]]; then 
brew_etc="$(brew --prefix)/etc" && [[ -r "${brew_etc}/profile.d/bash_completion.sh" ]] && . "${brew_etc}/profile.d/bash_completion.sh"
  fi

# GPG
export GPG_TTY=$(tty)

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(fzf --bash)"

. "$HOME/.cargo/env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mibui/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/mibui/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mibui/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/mibui/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Start up 
if [[ "$ARCH" = "Darwin" ]]; then 
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

eval "$(starship init bash)"
eval "$(zoxide init bash)"


if [[ "$ARCH" = "Darwin" ]]; then 
    # iterm2 shell integration. SHOULD BE LOADED LAST!
    source ~/.iterm2_shell_integration.bash
fi

