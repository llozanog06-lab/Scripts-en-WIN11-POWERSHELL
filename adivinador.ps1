$numeroSecreto = 7
$contador = 0

do{
    $respuestaUsuario = Read-Host "Intenta adivinar el numero magico: "
    $respuestaUsuarioParseada = [int]$respuestaUsuario
    if($respuestaUsuarioParseada -lt $numeroSecreto){
        Write-Host "El numero es mayor"
        $contador ++
        Write-Host $contador
    }else{
        Write-Host "El numero es menor"
        $contador ++
        Write-Host $contador
    }
}while ($respuestaUsuarioParseada -ne $numeroSecreto)

Write-Host "PERFECTO LO HAS ADIVINADO"