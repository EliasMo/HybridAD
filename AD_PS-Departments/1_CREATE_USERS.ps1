$PASSWORD_FOR_USERS   = "nightnight123,."
$USER_FIRST_LAST_LIST = Get-Content .\names.txt
# ------------------------------------------------------ #

$DEPARTMENTS = @("IT","HR","Finance","Marketing","Sales","Operations","Customer Support")


$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force

function Get-RandomDepartment {
    return $DEPARTMENTS | Get-Random
}

foreach ($n in $USER_FIRST_LAST_LIST) {
    $first = $n.Split(" ")[0].ToLower()
    $last = $n.Split(" ")[1].ToLower()
    $username = "$($first.Substring(0,1))$($last)".ToLower()
    $department = Get-RandomDepartment
   

   # OU path for specific department 
   $ouPath = "OU=$department,OU=Departments,DC=internalcompany,DC=com"
   
   Write-Host "Creating user: $($username) in department: $department" -BackgroundColor Black -ForegroundColor Cyan
  
  
  try {  
    New-AdUser -AccountPassword $password `
               -GivenName $first `
               -Surname $last `
               -DisplayName $username `
               -Name $username `
               -EmployeeID $username `
               -Department $department `
               -PasswordNeverExpires $true `
               -Path $ouPath `
               -Enabled $true

     Write-Host "Successfully created user $username in $department" -ForegroundColor Green
}
 catch {
     Write-Host "Failed to create user $username Error: $_" -ForegroundColor Red
 }

 }

