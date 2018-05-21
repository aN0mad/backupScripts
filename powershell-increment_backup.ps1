$location = @("C:\Users\Administrator\Desktop\Increment\Windows","C:\Users\Administrator\Desktop\Increment\Windows2")
$Destination = "C:\Users\Administrator\Desktop\Increment\Backup"
Get-Item -LiteralPath $location -Force | Where{$_.LastWriteTime -ge (Get-Date).AddHours(-24)} | %{$_.FullName} {Copy-Item -Force -Recurse $_ -Destination ($Destination + "\" + $_.Name) -Container}
