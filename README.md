# CSV File Copy Tool

This PowerShell script reads a CSV file containing source and destination paths and copies files specified in the CSV.

## Prerequisites

- PowerShell installed on your system.

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/your-repository.git
   ```

2. Navigate to the project directory:

   ```bash
   cd your-repository
   ```

3. Update the CSV file:

   - Specify the path to your CSV file in the script:

     ```powershell
     # Specify the path to the CSV file
     $csvPath = "path/to/your/csvfile.csv"
     ```

   - Ensure that your CSV file has the following columns: `SourcePath`, `DestinationPath`, and `_Filename`.

4. Run the script:

   ```powershell
   .\CopyFilesScript.ps1
   ```

   The script will read the CSV file and copy files from source to destination based on the specified paths.

## CSV File Format

Ensure your CSV file follows this format:

```csv
SourcePath,DestinationPath
C:\Source\Path1,C:\Destination\Path1
C:\Source\Path2,C:\Destination\Path2,
```

- `SourcePath`: The source directory path.
- `DestinationPath`: The destination directory path.
## Important Note

- Ensure that the paths in the CSV file and the specified filenames are accurate.
- The script assumes the existence of the source path; otherwise, it will display an error message.
