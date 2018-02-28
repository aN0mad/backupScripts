$location = @("C:\Users\Administrator\Desktop\Test\Windows","C:\Users\Administrator\Desktop\Test\Windows2")
$Destination = "C:\Users\Administrator\Desktop\Backup"
Get-Item -LiteralPath $location -Force | %{$_.FullName | %{Copy-Item -Force -Recurse $_ -Destination ($Destination + "\" + $_.Name) -Container}}