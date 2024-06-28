function Install($moduleName) {
    Install-Module $moduleName  -Confirm:$False -Force;
}

Install("posh-git")
Install("PSfzf");
Install("posh-sshell");
Install("Terminal-Icons");


# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# install zoxide
winget install ajeetdsouza.zoxide


choco install git powershell-core powertoys neovim 7zip vscode ripgrep starship -y

& '.\symlink.ps1';