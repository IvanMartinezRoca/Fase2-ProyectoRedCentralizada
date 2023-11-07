#Ponemos el Domain Component para el dominio en cuestión, que para este caso es IESMiralcamp.mylocal
$domain = "dc=IESMiralcamp,dc=mylocal"

#
# Creación de los equipos a partir de un fichero csv
#
# Lee el fichero equipos.csv. El carácter delimitador de columna es $
$equiposCsv = Read-Host "Introduce el fichero csv de Equipos:"
$fichero = Import-Csv -Path $equiposCsv -Delimiter "$"

foreach ($line in $fichero)
{

    New-ADComputer -Enabled:$true -Name $computerName -Path $fullPath -SamAccountName $computerName
}

Write-Host ""
Write-Host "Se han creado los equipos en el dominio $domain" -ForegroundColor Green
Write-Host ""
