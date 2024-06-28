#!/bin/bash

WORKDIR="$(pwd)"

function mac() {
    FORMULAE=("bash" "cmake" "curl" "docker-compose" "git" "gradle" "openjdk@21" "helm" "yq" "jq" "nvm" "poetry" "terraform" "wget" "starship" "zoxide" "ripgrep" )
    CASKS=("iterm2" "powershell")

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 

    brew update && brew upgrade && \

    for FORMULA in ${FORMULAE[@]}; do
        brew install "$FORMULA"
    done


    for CASK in ${CASKS[@]}; do 
        brew install --cask "$CASK"
    done

    # use bash as default shell
    #chsh -s /opt/homebrew/bin/bash
}

ARCH=$(uname)

if [[ "$ARCH" = "Darwin" ]]; then
    mac
fi

if [[ "$ARCH" = "Linux" ]]; then
 # TODO: Find distro and use appropriate package manager
 echo "Not implemented yet"
fi


# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && \
~/.fzf/install

# Update symbolic links
echo "Updating symbolic links..."
sh "${WORKDIR}/symlink.sh"

echo "Setup finished!"

