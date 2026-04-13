
$notaIntroducida = Read-Host "Introduce una nota: (0-10)"
$notaParseada = [int]$notaIntroducida

switch($notaIntroducida){
    {$_ -lt 5} {Write-Host "Esta suspenso"}
    {$_ -ge 5 -and $_ -lt 7} {Write-Host "Aprobado"}
    {$_ -ge 7 -and $_ -lt 9} {Write-Host "Notable"}
    {$_ -ge 9 } {Write-Host "Sobresaliente"}
}