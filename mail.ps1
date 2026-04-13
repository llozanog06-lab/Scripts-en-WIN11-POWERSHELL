Write-Host "Bienvenido al menu aqui tienes tus opciones: "
Write-Host "1_Saludar al Usuario "
Write-Host "2_ Mostrar la fecha"
Write-Host "3_ Salir del menu"
$date = get-date
$opcionElegida = Read-Host "Elige la eleccion que desees: "

switch ($opcionElegida){
    1 {Write-Host "Bienvenido usuario"}
    2 {Write-Host "La fecha es: $date"}
    3 {Write-Host "Saliendo del programa muchas gracias, vuelva pronto."; break}

    default {Write-Host "Opcion no valida introduce un valor de nuevo"}
}