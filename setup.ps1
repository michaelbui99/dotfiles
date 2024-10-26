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

choco install git powershell-core powertoys neovim 7zip vscode ripgrep starship lazygit nodejs zig -y

& '.\symlink.ps1';

Write-Host "Remember to add tools to PATH (e.g. C:\ProgramData\chocolatey\lib\lazygit\tools and fzf)" 
