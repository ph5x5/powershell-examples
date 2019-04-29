$counter = 0
Get-Variable | Where-Object {  ($_.Value -ne $null) -and ($_.Name -ne "counter") -and ($_.Value.GetType().FullName -eq "System.Int32") } | ForEach-Object {
    $counter = $counter + $_.Value
}
Write-Host "Sum: $counter"
