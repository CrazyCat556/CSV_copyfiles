# Specify the path to the CSV file
$csvPath = "_CSV_Path"

# Read the CSV file
$csvData = Import-Csv $csvPath

# Loop through each row in the CSV and copy files
foreach ($row in $csvData) {
    $sourcePath = $row.SourcePath
    $destinationPath = $row.DestinationPath

    # Escape special characters in source and destination paths
    $sourcePath = [System.Management.Automation.WildcardPattern]::Escape($sourcePath)
    $destinationPath = [System.Management.Automation.WildcardPattern]::Escape($destinationPath)

    # Check if the source path exists
    if (Test-Path $sourcePath -PathType Container) {
        # Create the destination path if it doesn't exist
        if (!(Test-Path $destinationPath -PathType Container)) {
            New-Item -ItemType Directory -Path $destinationPath -Force
        }

        # Copy files from source to destination
        Copy-Item -Path $sourcePath\* -Filter "_Filename" -Destination $destinationPath -Recurse -Force

        Write-Host "Files copied from $sourcePath to $destinationPath"
    } else {
        Write-Host "Source path $sourcePath not found."
    }
}
