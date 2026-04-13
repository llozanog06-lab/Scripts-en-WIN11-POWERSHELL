$password = ConvertTo-SecureString "1234" -AsPlainText -Force
New-LocalUser -Name "empleado1" -Password $password #CREA EL USUARIO 1
New-LocalUser -Name "empleado2" -Password $password #CREA EL USUARIO 2
New-Item -Path "C:\Empresa" -ItemType Directory #CREA EL DIRECTORIO



#LE DAMOS LOS PERMISOS AL USUARIO 1:
$acl = Get-Acl "C:\Empresa"
$regla = New-Object System.Security.AccessControl.FileSystemAccessRule(
    "empleado1",
    "FullControl",
    "Allow"
)
$acl.AddAccessRule($regla)
Set-Acl "C:\Empresa" $acl

#ELIMINAR LA HERENCIA
$acl.SetAccessRuleProtection($true, $false)

#LE DAMOS LOS PERMISOS AL USUARIO 2
$regla2 = New-Object System.Security.AccessControl.FileSystemAccessRule(
    "empleado2",
    "Read",
    "Deny"
)
$acl.AddAccessRule($regla2)
Set-Acl "C:\Empresa" $acl