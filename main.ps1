$urls = "http://192.168.0.104/pics.zip", "http://192.168.0.104/pack.zip"

# $dest = "D:\\temp\\e\\b"

# forEach ($url in $urls) {
#     #$fileName = Split-Path $url -Leaf
#     Write-Host "Downloading $url"
#     #Invoke-WebRequest -Uri $url -OutFile $fileName
#     # Start-BitsTransfer -Source $url
#     Start-BitsTransfer -Source $url -Destination $dest
# }

Start-BitsTransfer -Source $urls

$list = Get-ChildItem -Recurse . -Include *.zip

foreach ($file in $list) {
    Expand-Archive -Path $file -DestinationPath .\\unzipped -Force
}

# Get-ChildItem -Path . | Expand-Archive -Path .\*.zip -Force

$patterns = "Inwigilacja", "Dziewczyna"

$FileList = Get-ChildItem -Recurse .\\unzipped
$Success = $FileList | Select-String -Pattern $patterns -AllMatches

$match = @{label="Match";expression={$_.Matches.Value}}
$parent = @{label="Folder";expression={Split-Path $_.Path -Parent | Split-Path -Leaf}}

$Success | Select-Object -Property $match,$parent,Filename

# http://localhost:8080/flowable-work/actuator/mappings