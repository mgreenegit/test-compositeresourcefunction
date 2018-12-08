$request = Get-Content $req -Raw | ConvertFrom-Json
 
$response = @{
    Message = $request
} | ConvertTo-Json
 
Out-File -InputObject $response -FilePath $res -Encoding Ascii