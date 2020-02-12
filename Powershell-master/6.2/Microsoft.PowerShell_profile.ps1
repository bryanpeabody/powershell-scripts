# Default to Repos
set-location C:\Users\400511\Source\Repos

# Make sure scripts and notepad++ are on the path
$env:path += ";$home\scripts;C:\Program Files (x86)\Notepad++\"

# Set color scheme
$Host.PrivateData.ErrorForegroundColor = 'DarkRed'
$Host.PrivateData.ErrorBackgroundColor = 'White'
$Host.PrivateData.WarningForegroundColor = 'Yellow'
$Host.PrivateData.WarningBackgroundColor = 'White'
$Host.PrivateData.DebugForegroundColor = 'Yellow'
$Host.PrivateData.DebugBackgroundColor = 'White'
$Host.PrivateData.VerboseForegroundColor = 'Green'
$Host.PrivateData.VerboseBackgroundColor = 'White'
$Host.PrivateData.ProgressForegroundColor = 'DarkGray'
$Host.PrivateData.ProgressBackgroundColor = 'White'

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
