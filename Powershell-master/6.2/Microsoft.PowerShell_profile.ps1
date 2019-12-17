# Default to C:
set-location C:\Users\400511\Desktop

# Make sure scripts and notepad++ are on the path
$env:path += ";$home\scripts;C:\Program Files (x86)\Notepad++\"

# Setup colors
Set-PSReadLineOption -Colors @{ 
  "Command"="`e[97m"
  "Variable"="`e[97m"
  "Keyword"="`e[97m"
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
