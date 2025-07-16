#Foreach Loops
$users = @('bob','nancy','john','daisy')

foreach($user in $users){
    Write-Host "Hi $user!"
}

$users | ForEach-Object{
    Write-Host "oooo baby baby $_"
}
    
$users.ForEach({Write-Host "this is a method for the array, $_."})

foreach($user in $users){
    if($user = "daisy"){
        Write-Host "I like Daisy."
    }
        else {
            Write-Host "I don't like Daisy - $_"
        }
    }
#for loops have a number, condition, and operation
    for($i = 0; $i -lt 10; $i++){
        Write-Host "Let's count, $i"
    }
#In the code below, the $i value starts at 0 and increases until the value of the index($i) equals the length of the array $users.
#In the second line, The user in the array based on the value of $i, has "UserID" appended to their value. 
#The square brackets are used for pulling the index data ($i)
    for($i = 0; $i -lt $users.Length; $i++){
        $users[$i] = "UserID $($users[$i])"
    }

    for($i = 1; $i -lt $users.Length; $i++){
        Write-Host $users[$i] "comes after" $users[$i-1]
    }

    for($i = 0; $i -lt $users.Length; $i++){
        Write-Host "Processing $($users[$i])"
        if($($users[$i]) -eq "UserID daisy"){
            Write-Host "We don't like $($users[$i]) >:("
        } 
        else {
            $users[$i] = $users[$i].Replace("UserID ","")
            Write-Host "We like $($users[$i])!"
        }
    }


#Do Loops

$counter = 0
While($counter -lt 10){
    $counter
    $counter++
}

while (Test-Connection -ComputerName 'dogman' -Quiet -Count 1){
    Start-Sleep -seconds 10
}
Write-Host "Can't reach dogman, bro."

do{
    $choice = Read-Host -Prompt "Bacon or Cheddar?"
        if ($choice -ne "Bacon" -and $choice -ne "Cheddar") {
            Write-Host "Invalid!"
        }
        elseif($choice -eq "Cheddar"){
            Write-Host "Disgusting! How could you possible type that word? Chodreh??"
            } 
} while ($choice -ne "Bacon" -and $choice -eq "Cheddar")
    
    else{
        Write-Host "Ah a sensible person, Bacon. Mmmmm Bacon."
        for($i = 0;$i -lt 10){
            Write-output "Bacon! HOOOOOOO YEAH BABY!"
            Start-Sleep -Seconds 1
            $i++
        }
    }
