$Environment = $OctopusParameters['Octopus.Environment.Name']
$Machine = $OctopusParameters['Octopus.Machine.Name']

Write-Host "Running deploy in $Environment to $Machine"