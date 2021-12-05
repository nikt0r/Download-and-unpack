
try {
    $response = Invoke-RestMethod -Uri http://192.168.0.104/json.json
}
catch {
    $_.Exception.Response.StatusCode.value__
    $_.Exception.Response.StatusDescription
}

$response.data | select id -ExpandProperty variables


# $response.data | ConvertTo-Json -Depth 10
