Import-Module PSfzf
Import-Module PSReadLine


# PSReadLine
Set-PSReadlineOption -PredictionSource History
Set-PSReadLineKeyHandler -Chord "CTRL+j" -Function NextHistory
Set-PsReadLineKeyHandler -Chord "CTRL+k" -Function PreviousHistory
Set-PsReadLineKeyHandler -Chord "CTRL+l" -Function AcceptSuggestion
Set-PSReadLineOption -PredictionViewStyle List

# Prompt
Import-Module -Name Terminal-Icons
Import-Module posh-git

# fzf
Set-PsFzfOption -PSReadlineChordReverseHistory 'Ctrl+r'
$env:FZF_DEFAULT_OPTS = '--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'


# Alias
Set-Alias vim nvim
Set-Alias grep findstr
Set-Alias ll ls
Set-Alias lg lazygit

# Functions
function touch {
    Param(
        [Parameter(Mandatory = $true)]
        [string]$Path
    )
  
    if (Test-Path -LiteralPath $Path) {
      (Get-Item -Path $Path).LastWriteTime = Get-Date
    }
    else {
        New-Item -Type File -Path $Path
    }
}

function which($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | 
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
    Import-Module "$ChocolateyProfile"
}

# Start up 
Invoke-Expression (&starship init powershell)
Invoke-Expression (& { (zoxide init powershell | Out-String) })
