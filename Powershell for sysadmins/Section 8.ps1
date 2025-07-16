#'/users/ethanheffentrager/Documents/Git/powershell/Old Folder'

param(
    [Parameter(Mandatory)]
    [string]
    $FolderPath 
)

$Now = Get-Date
$LastWrite = $Now.AddDays(-5)

$oldfiles = (Get-ChildItem -Path $FolderPath -File -Recurse).Where{$_.LastWriteTime -le $LastWrite} 
foreach($file in $oldfiles){
    Remove-Item -Path $file.FullName 
    Write-Verbose "File [$($file.FullName)] has been TRASHED"
}

