New-EventLog -LogName Application -Source "ImpartInspector"
Set-Service -Name 'Impart Inspector' -StartupType 'Automatic'