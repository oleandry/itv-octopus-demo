$FilesToPush = Get-ChildItem "c:\dev\itv-octopus-demo\*.nupkg"
$ArtifactFeed = "http://orydland.westeurope.cloudapp.azure.com/nuget/packages"
$ApiKey = "API-UFX9NMTYMIIGTTDSTWDWGRC4G"

foreach ($file in $FilesToPush)
{
    Write-Host "Pushing $file" -ForegroundColor Green
    nuget push $file -source $ArtifactFeed -NonInteractive -ApiKey $ApiKey
}