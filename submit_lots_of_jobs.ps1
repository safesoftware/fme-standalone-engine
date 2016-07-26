$startDTM = (Get-Date)

$scriptDir = $PSScriptRoot
$cities = @("Vancouver", "Amersfoort", "Anaheim", "Atlanta", "Austin", "Barcelona", "Beijing", "Belfast", "Bengaluru", "Birmingham", "Boston", "Brisbane", "Calagry", "Cardiff", "Denver", "Edinburgh", "Edmonton", "Espoo", "Essen", "Guangzhou", "Houston", "Jinan", "Kunming", "Leuven", "London", "Lyon", "Madrid", "Manchester")

$submitJob = {
    param ([String]$scriptDir, [String]$city)
    python $scriptDir\FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location $city"
}

# Loop through each city and submit a job for each
$Jobs = @()
foreach ($city in $cities) {
    Write-Host "Submitting job for report on city of $city..."
    $Jobs += Start-Job -ScriptBlock $submitJob -ArgumentList $scriptDir, $city -Name $city
}

foreach ($job in $Jobs) {
    
    #Wait for the background jobs
    $job | Wait-Job
    #Get the data from them
    $job | Receive-Job
    #And delete the jobs - just cleaning up after ourselves
    $job | Remove-Job
}

# Get End Time
$endDTM = (Get-Date)

# Echo Time elapsed
"Elapsed Time: $(($endDTM-$startDTM).totalseconds) seconds"


