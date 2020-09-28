$ExportPath = "D:\Hyperv\Exports" # change the export path

Remove-Item $ExportPath\* -Recurse
Get-VM | Export-VM -Path $ExportPath
exit