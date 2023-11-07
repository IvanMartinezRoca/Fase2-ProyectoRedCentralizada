# Ponemos el Domain Component para el dominio en cuestión, que para este caso es IESMiralcamp.mylocal
$domain = "dc=IESMiralcamp,dc=mylocal"

#
# Creación de los grupos a partir de un fichero csv
#
$gruposCsv = Read-Host "Introduce el fichero csv de Grupos:"
# Lee el fichero grupos.csv
$fichero = Import-Csv -Path $gruposCsv -Delimiter "$"

foreach ($linea in $fichero)
{

    New-ADGroup -Name $linea.Name -Description $linea.Description -GroupCategory $linea.Category -GroupScope $linea.Scope -Path $linea.Path
}

Write-Host ""
Write-Host "Se han creado los grupos en el dominio $domain" -ForegroundColor Green
Write-Host ""
