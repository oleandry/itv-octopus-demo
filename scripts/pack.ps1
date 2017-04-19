param(
    [string]$Version = "1.0.0"
)
$FilesToPack = Get-ChildItem "c:\dev\itv-octopus-demo\**\*.nuspec"

foreach ($file in $FilesToPack)
{
        Write-Host "Packing $file with Version $Version " -ForegroundColor Green
        nuget pack $file -Verbosity quiet -NoPackageAnalysis -Version $Version    
}