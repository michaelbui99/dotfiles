# PATHS
set PATH /usr/local/bin /usr/sbin $PATH

set -gx PATH $PATH /opt/homebrew/opt/dotnet
set -gx PATH $HOME/bin $HOME/.local/bin /usr/local/bin $PATH
set -gx PATH /opt/homebrew/opt/openjdk@17/bin $PATH
set -gx PATH $PATH $HOME/.cargo/bin
set -gx PATH $PATH $HOME/.dotnet/tools
set -gx PATH $PATH $HOME/.local/bin
set -gx PATH $PATH /usr/local/go/bin
set -gx PATH $PATH (go env GOPATH)/bin
set -gx PATH (set -q KREW_ROOT; and echo $KREW_ROOT; or echo $HOME/.krew)/bin $PATH
set -gx PATH $PATH "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

# Aliases
alias ll="ls -alFh"
alias k="kubectl"
alias kaf="kubectl apply -f"
alias vim="nvim"
alias zj="zellij"
alias lg="lazygit"

# Start brew
if test -d /opt/homebrew
      /opt/homebrew/bin/brew shellenv | source
end

zoxide init fish | source
starship init fish | source
