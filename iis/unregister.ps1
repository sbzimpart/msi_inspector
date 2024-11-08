Import-Module WebAdministration
Remove-WebGlobalModule -Name 'ImpartModule'
#Remove-WebConfigurationProperty -pspath 'MACHINE/WEBROOT/APPHOST' -filter 'system.webServer/modules' -name '.' -match @{name='ImpartModule'}
