New-EventLog -LogName Application -Source "ImpartInspector"
Start-Service -Name 'Impart Inspector'
