function prompt
{    
    Write-Host ("PS>") -nonewline -foregroundcolor White
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

# Default to C:
set-location C:\

# Make sure scripts and notepad++ are on the path
$env:path += ";$home\scripts;C:\Program Files (x86)\Notepad++\"

# Show custom header
Show-Header
