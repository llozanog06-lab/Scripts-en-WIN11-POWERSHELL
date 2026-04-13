$numeroRecibido = Read-Host "Introduce hasta el número que quieres que se cuente: "
$i = 1

while ($i -le $numeroRecibido){
    Write-Host $i 
    $i = $i +1
}