#Region - This is an example script
$users = @{
    'eheff' = 'ethan heffentrager'
    'bjoel' = 'billy joel'
}
Write-Output "bloo bloo $($users['eheff'])"
#endregion - This is the end of my example script

Test-Connection -computername 8.8.8.8 -Quiet

if((Test-Connection -ComputerName 8.8.8.8 -Quiet) -and  (Test-Connection -ComputerName 'ajisf;ij' -Quiet)){
    Write-Host "You can ping Google!"
    }
    else {
        "You can't ping Google :("
    }


$currentuser = $users['eheff']
switch ($currentuser) {
    'ethan heffentrager' { 
        Write-Host "You selected $_"
        break
     }
    Default {
        Write-Host "You didn't select anyone!"
    }
}

switch (2) {
    1 { 
        Write-Host "You selected $_"
        break
     }
    1 {
        Write-Host "You selected $_...again"
    }
    2 {
        Write-Host "2, ah what a lovely number...2"
    }
    Default {
        Write-Host "You didn't select anything!!! AGH!"
    }
}
