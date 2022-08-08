Param(
    [parameter(Mandatory = $true)]
    [string]$file_scripts
)

$file_scripts = $file_scripts.Trim();

Write-Host "Inputss: $file_scripts."
Write-Host "----------------------------------"
$fileScripts = $file_scripts.Split([Environment]::NewLine, [StringSplitOptions]::RemoveEmptyEntries);

Write-Host "File array: $fileScripts."
Write-Host "----------------------------------"

foreach ($fileScript in $fileScripts)
{
	Write-Host "File name: $fileScript."
}
Write-Host "----------------------------------"

$sqlcmdTool = "C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\sqlcmd.exe"
& $sqlcmdTool -?

Write-Host "----------------------------------"
Write-Host "Doneeeeeeeeeeeeeee!"
