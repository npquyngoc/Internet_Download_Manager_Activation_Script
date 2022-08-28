[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor [System.Net.SecurityProtocolType]::Tls12

$DownloadURL = "https://raw.githubusercontent.com/npquyngoc/Internet_Download_Manager_Activation_Script/main/IDM_Activation_Script.cmd"
$FilePath = "$env:TEMP\TEMP_IAS.cmd"

try {
    Invoke-WebRequest -Uri $DownloadURL -UseBasicParsing -OutFile $FilePath

} catch {
    Write-Error $_
    Return
}

if (Test-Path $FilePath) {
    Start-Process $FilePath -Wait
    $item = Get-Item -LiteralPath $FilePath
    $item.Delete()
}
