$carnet = Read-Host "Tienes carnet: (true\false)"
$edad = Read-Host "Edad: "
$carnet = [bool]$carnet
$edad = [int]$edad

if (($edad -ge 18) -and ($carnet -eq 'true')){
    Write-Host "Puedes conducir"
}else{
    Write-Host "No puedes conducir"
}