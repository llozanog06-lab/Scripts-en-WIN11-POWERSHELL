$Ruta = "C:\PRUEBA"
$fsw = New-Object System.IO.FileSystemWatcher

$fsw.Path = $Ruta
$fsw.Filter = "*.*"
$fsw.IncludeSubdirectories = $true
$fsw.EnableRaisingEvents = $true

Register-ObjectEvent -InputObject $fsw -EventName Created -Action {
    Write-Host "CREADO -> $($Event.SourceEventArgs.FullPath)"
}

Register-ObjectEvent -InputObject $fsw -EventName Changed -Action {
    Write-Host "MODIFICADO -> $($Event.SourceEventArgs.FullPath)"
}

Register-ObjectEvent -InputObject $fsw -EventName Deleted -Action {
    Write-Host "ELIMINADO -> $($Event.SourceEventArgs.FullPath)"
}

Register-ObjectEvent -InputObject $fsw -EventName Renamed -Action {
    Write-Host "RENOMBRADO -> $($Event.SourceEventArgs.OldFullPath) -> $($Event.SourceEventArgs.FullPath)"
}

Write-Host "Probando eventos en la ruta $Ruta (Ctrl+C para salir)"

while ($true) { Start-Sleep 1 }
