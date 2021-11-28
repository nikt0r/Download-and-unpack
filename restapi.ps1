
try {
    Invoke-RestMethod -Uri http://192.168.0.104/abc
    
}
catch {
    $_.Exception.Response.StatusCode.value__
    $_.Exception.Response.StatusDescription
}
