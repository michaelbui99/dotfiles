# Aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Environment
PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH=$PATH:$HOME/.cargo/bin
export PATH="$PATH:/Users/mibui/.dotnet/tools"
export PATH=$PATH:$(go env GOPATH)/bin

# Start up 
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init bash)"
eval "$(zoxide init bash)"


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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mibui/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mibui/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mibui/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mibui/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

. "$HOME/.cargo/env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mibui/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/mibui/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mibui/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/mibui/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# iterm2 shell integration. SHOULD BE LOADED LAST!
source ~/.iterm2_shell_integration.bash

