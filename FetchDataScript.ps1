# Set the URL of the API
$apiUrl = "https://randomuser.me/api/"

# Function to fetch and display data
function FetchData {
    $response = Invoke-RestMethod -Uri $apiUrl -Method Get
    
    # Display relevant data
    $response.results | ForEach-Object {
        Write-Host "Name: $($_.name.first) $($_.name.last)"
        Write-Host "Email: $($_.email)"
        Write-Host "------------------------"
    }
}

# Loop to fetch data every 5 minutes
while ($true) {
    FetchData
    Start-Sleep -Seconds 300  # 300 seconds = 5 minutes
}
