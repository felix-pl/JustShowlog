Param(
    [parameter(Mandatory = $true)]
    [string]$file_scripts
)

Write-Host "Inputss: $file_scripts."

$fileScripts = $file_scripts.Split('\n').Trim();

$sqlcmdTool = "C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\sqlcmd.exe"

foreach ($fileScript in $fileScripts)
{
	Write-Host "File name: $fileScript."
}
& $sqlcmdTool -?

Write-Host "Doneeeeeeeeeeeeeee!"
