$folder = "d:\temp\e\b\test\"
$dest = "d:\temp\e\b\dest\"
Set-Location $folder
Copy-Item $folder\* -Exclude A00* -Destination $dest -Confirm
Copy-Item $folder\* -Include A00* -Destination "$dest\common\" -Confirm