param(
    
)

$Now = Get-Date
$LastWrite = $Now.AddDays(-8)
$LastWrite

(Get-ChildItem -Path '/Users/ethanheffentrager/Downloads/Old Folder' -File -Recurse).Where{$_.LastWriteTime -le $LastWrite} | Remove-Item