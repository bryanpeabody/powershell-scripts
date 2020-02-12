function prompt
{    
    Write-Host ("PS>") -nonewline
    return " "
}

function Show-Header
{
	$WhoAmI=whoami
	$ComputerName=$env:computername
	$IPAddress=@(Get-WmiObject Win32_NetworkAdapterConfiguration | Where-Object {$_.DefaultIpGateway})[0].IPAddress[0]
	$PSVersion=$host | Select-Object -ExpandProperty Version

	Write-Host "******************************************"
	Write-Host "Computer Name: " $ComputerName
	Write-Host "IP Address:    " $IPAddress
	Write-Host "User:          " $WhoAmI
	Write-Host "PSVersion:     " $PSVersion
	Write-Host "******************************************"
	Write-Host
	Write-Host $(get-location)
	Write-Host
}

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

# Default to C:
set-location C:\Users\400511\Source\Repos

# Make sure scripts and notepad++ are on the path
$env:path += ";$home\scripts;C:\Program Files (x86)\Notepad++\"

# Set command color
Set-PSReadlineOption -TokenKind Command -ForegroundColor Black

# Show custom header
Show-Header
