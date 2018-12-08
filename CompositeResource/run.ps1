$request = Get-Content $req -Raw | ConvertFrom-Json
 
if ($req_query_config) {
    $config = $req_query_config
}
else {
    $config = $requestBody.config
}

$response = @{
    Config = $config
} | ConvertTo-Json
 
Out-File -InputObject $response -FilePath $res -Encoding Ascii