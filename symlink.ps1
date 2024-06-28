$windowsTerminalSettingsPath = "$env:userprofile\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json";

New-Item -ItemType SymbolicLink -Force -Path $windowsTerminalSettingsPath -Target "$env:userprofile\dotfiles\windows-terminal\settings.json";
New-Item -ItemType SymbolicLink -Force -Path $PROFILE -Target $env:USERPROFILE\dotfiles\powershell\Profile.ps1;
New-Item -ItemType SymbolicLink -Force -Path $env:USERPROFILE/.vimrc -Target $env:USERPROFILE\vim\.vimrc
New-Item -ItemType SymbolicLink -Force -Path $env:USERPROFILE/.ideavimrc -Target $env:USERPROFILE\vim\.ideavimrc
New-Item -ItemType SymbolicLink -Force -Path $env:USERPROFILE/.config/starfield.toml -Target $env:USERPROFILE\starship\.starfield.toml

