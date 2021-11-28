$hashtable1 = @{
    roles = @("abc", "abewec", "123")
}

$hashtable2 = @{
    roles = @("def", "456")
}

$array1 = @(
    "123", "456"
)

$array2 = @(
    "789", "abc"
)

$json1 = @'
{
    roles: 
        [
            {
                name: "abc"
            },
            {
                name: "123"
            }
        ]
    
}
'@

$json2 = @'
{
    roles: 
        [
            {
                name: "cvzx"
            },
            {
                name: "45654"
            }
        ]
    
}
'@

# $json1 | ConvertFrom-Json | Select -ExpandProperty roles | Format-Table -GroupBy roles
# $json2 | ConvertFrom-Json | Select -ExpandProperty roles | Format-Table -GroupBy roles

# $hashtable1 | Format-Table -GroupBy roles -Property value | select $_[0]
    
# $hashtable2 | Format-Table -GroupBy roles -Property value

$json1 | ConvertFrom-Json | Select -ExpandProperty roles | Format-Table -RepeatHeader
$json2 | ConvertFrom-Json | Select -ExpandProperty roles | Format-Table -RepeatHeader