param(
    [string]$dllPath
)


Import-Module WebAdministration
New-WebGlobalModule -Name 'ImpartModule' -Image $dllPath
Add-WebConfigurationProperty -pspath 'MACHINE/WEBROOT/APPHOST' -filter 'system.webServer/modules' -name '.' -value @{name='ImpartModule'}
