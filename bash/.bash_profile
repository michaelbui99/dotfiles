if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi


# Environment
PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH=$PATH:$HOME/.cargo/bin
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="$PATH:$HOME/.local/bin"


. "$HOME/.cargo/env"