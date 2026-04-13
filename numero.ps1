$numero = Read-Host "Introduce un numero: "
$numero = [int]$numero  
if ($numero -gt 0){
    Write-Host "El numero es positivo"
}elseIf ($numero -lt 0){
    Write-Host "El numero es negativo"
}else{
    Write-Host "El numero es 0"
}