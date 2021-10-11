#by Harrison Evans
#date 10/10/21
#reason Turn off smb v1 and enable password complexity.



Set-SmbServerConfiguration -EnableSMB1Protocol $false # makes smb v1 disabled


secedit /export /cfg c:\secpol.cfg
(GC C:\secpol.cfg) -Replace "PasswordComplexity = 0","PasswordComplexity = 1" | Out-File C:\secpol.cfg
secedit /configure /db c:\windows\security\local.sdb /cfg c:\secpol.cfg /areas SECURITYPOLICY
Remove-Item C:\secpol.cfg -Force
#creates rule 