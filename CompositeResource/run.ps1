$request = gc $req -Raw | ConvertFrom-Json
 
$response = @{
    Message = $request.config
} | ConvertTo-Json
 
Out-File -InputObject $response -FilePath $res -Encoding Ascii