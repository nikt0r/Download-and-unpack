function Get-CaseOrProcess {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidatePattern("^(CAS|PRC)-")]
        [string]$id
    )
    
    Write-Host $id -ForegroundColor Yellow

}
