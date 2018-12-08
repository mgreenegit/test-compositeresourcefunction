$request = Get-Content $req -Raw | ConvertFrom-Json

if ($req_query_config) {
    $config = $req_query_config
}
else {
    $config = $requestBody.config
}

import-module .\compositeresource\compositeresource.psd1
ConvertTo-CompositeResource -configurationname $config -author 'function'
$out = ls .\

$response = @{
    Config = $out
} | ConvertTo-Json
 
Out-File -InputObject $response -FilePath $res -Encoding Ascii