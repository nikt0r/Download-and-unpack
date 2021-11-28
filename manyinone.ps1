. .\functions.ps1

try {
    Get-CaseOrProcess
}
catch {
    Write-Host $_.Exception.Message -ForegroundColor Red
}


