# Ponemos el Domain Component para el dominio en cuestión, que para este caso es IESMiralcamp.mylocal
$domain = "dc=IESMiralcamp,dc=mylocal"

# Solicitamos por pantalla al usuario el fichero csv y guardamos el valor en la variable $ficheroCsvUO
# Ejemplo, el usuario introduce el fichero con la ruta donde se encuentra el mismo: C:\ficherosCsv\unidadesOrgnizativasSMR.csv
$ficheroCsvUO = Read-Host "Introduce el fichero csv de UO's:"

# Leemos el fichero csv mediante la función Import-Csv de PowerShell y esta,
# crea objetos personalizados similares a tablas a partir de los elementos (líneas) en un archivo CSV.
# Con el parámetro delimitador, le decimos a la función qué caracter se usa en el fichero csv para separar cada uno de los campos (columnas)
# Cada columna en el archivo CSV se convierte en una propiedad del objeto personalizado $fichero
# y los elementos en filas se convierten en los valores de propiedad.
# Referencia: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/import-csv?view=powershell-6

$fichero = Import-Csv -Path $ficheroCsvUO -Delimiter "$"

# Mediante el bucle foreach, leemos el objeto $fichero, es decir, cada pasada por el bucle es la lectura de una
# de las líneas del fichero csv. Cada línea que se lee, se guarda en el objeto $linea
foreach ($line in $fichero)
{
    $name = $line.Name
    $description = $line.Description
    $path = $line.Path

    New-ADOrganizationalUnit -Description $line.Description -Name $line.Name -Path $line.Path -ProtectedFromAccidentalDeletion $true
}

Write-Host "Se han creado las UOs satisfactoriamente en el dominio $domain"
