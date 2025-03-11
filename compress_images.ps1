$env:PATH = "C:\Users\juray\AppData\Roaming\npm;" + $env:PATH

# Compress PNG files
Get-ChildItem -Path "." -Filter "*.png" | ForEach-Object {
    $outputPath = "compressed/$($_.Name)"
    sharp --input $_.Name --output $outputPath --quality 80 --format png
}

# Compress SVG files
Get-ChildItem -Path "." -Filter "*.svg" | ForEach-Object {
    $outputPath = "compressed/$($_.Name)"
    svgo $_.Name -o $outputPath
}
