$json1 = @'
{
    items: 
        [
            {
                name: "abc",
                value: "1"
            },
            {
                name: "123",
                value: "2"
            }
        ]
    
}
'@

$json1 | ConvertFrom-Json | Select -ExpandProperty items