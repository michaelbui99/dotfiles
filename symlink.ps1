$windowsTerminalSettingsPath = "$env:userprofile\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json";

New-Item -ItemType SymbolicLink -Force -Path $windowsTerminalSettingsPath -Target "$env:userprofile\dotfiles\windows-terminal\settings.json";

New-Item -ItemType SymbolicLink -Force -Path $PROFILE -Target $env:USERPROFILE\dotfiles\powershell\Profile.ps1;

New-Item -ItemType SymbolicLink -Force -Path $env:USERPROFILE/.vimrc -Target $env:USERPROFILE\dotfiles\vim\.vimrc

New-Item -ItemType SymbolicLink -Force -Path $env:USERPROFILE/.ideavimrc -Target $env:USERPROFILE\dotfiles\vim\.ideavimrc
New-Item -ItemType SymbolicLink -Force -Path $env:USERPROFILE/.config/starship.toml -Target $env:USERPROFILE\dotfiles\starship\starship.toml

New-Item -ItemType SymbolicLink -Force -Path $env:LOCALAPPDATA/nvim -Target $env:USERPROFILE\dotfiles\vim\.config\nvim
