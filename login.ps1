# Login básico y comprobación de administrador

Write-Host "=== LOGIN ==="
$usuario = Read-Host "Usuario"
# Read-Host -AsSecureString para no mostrar la contraseña
$passSecure = Read-Host "Contraseña" -AsSecureString

# (Opcional) Convertir la contraseña a texto plano si quieres validarla de alguna forma
#$pass = [Runtime.InteropServices.Marshal]::PtrToStringAuto(
#    [Runtime.InteropServices.Marshal]::SecureStringToBSTR($passSecure)
#)

Write-Host ""
Write-Host "Bienvenido, $usuario"
Write-Host ""

# Comprobar si el usuario que ejecuta el script es administrador
$windowsIdentity = [Security.Principal.WindowsIdentity]::GetCurrent()
$windowsPrincipal = New-Object Security.Principal.WindowsPrincipal($windowsIdentity)
$esAdmin = $windowsPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if ($esAdmin) {
    Write-Host "Estado: ERES administrador." -ForegroundColor Green
} else {
    Write-Host "Estado: NO eres administrador." -ForegroundColor Red
}

Write-Host ""
Write-Host "Pulsa una tecla para salir..."
[void][System.Console]::ReadKey($true)