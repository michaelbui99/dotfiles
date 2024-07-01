#!/bin/bash

WORKDIR="$(pwd)"

function mac() {
    FORMULAE=("bash" "cmake" "curl" "docker-compose" "git" "gradle" "openjdk@21" "helm" "yq" "jq" "nvm" "poetry" "terraform" "wget" "starship" "zoxide" "ripgrep" "nvim" "zellij" "jesseduffield/lazygit/lazygit")
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

function ubuntu(){
    sudo add-apt-repository ppa:neovim-ppa/unstable

    PACKAGES="git unzip net-tools openjdk-21-jdk openjdk-21-jre python3-pip neovim terraform jq yq gradle nodejs build-essential"

    # Install tools
    sudo apt update 
    sudo apt upgrade -y 
    sudo apt install -y ${PACKAGES}
    ## Starship
    curl -sS https://starship.rs/install.sh | sh
    ## Zoxide
    curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh 
    ## NVM
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    ## Lazygit
    LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
    curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
    tar xf lazygit.tar.gz lazygit
    sudo install lazygit /usr/local/bin

    # Setup ssh key
    SKIP_SSH_KEYGEN=false
    if [[ -f ~/.ssh/id_rsa ]];then
            echo "Detected existing ssh keys."
            echo "Skipping ssh-keygen."
            $SKIP_SSH_KEYGEN=true
    fi

    if [[ $SKIP_SSH_KEYGEN == false ]]; then
            ssh-keygen -b 4096 -N "" -f ~/.ssh/id_rsa
    fi
}

ARCH=$(uname)

if [[ "$ARCH" = "Darwin" ]]; then
    mac
fi

if [[ "$ARCH" = "Linux" ]]; then
    # TODO: Find distro and use appropriate package manager. For now just assume ubuntu 
    ubuntu
fi


# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && \
~/.fzf/install

# Update symbolic links
echo "Updating symbolic links..."
sh "${WORKDIR}/symlink.sh"

echo "Setup finished!"

