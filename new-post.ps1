param(
    [string]$TrName = "",
    [string]$EnName = ""
)

# Prompt user if filenames were not provided via command line
if ($TrName -eq "" -and $EnName -eq "") {
    $TrName = Read-Host "Enter Turkish filename (leave blank to skip)"
    $EnName = Read-Host "Enter English filename (leave blank to skip)"
}

Write-Host " "

if (![string]::IsNullOrWhiteSpace($TrName)) {
    Write-Host "Creating Turkish post: content/tr/posts/$TrName.md" -ForegroundColor Cyan
    hugo new content/tr/posts/$TrName.md --kind post
} else {
    Write-Host "Skipping Turkish post creation." -ForegroundColor Yellow
}

if (![string]::IsNullOrWhiteSpace($EnName)) {
    Write-Host "Creating English post: content/en/posts/$EnName.md" -ForegroundColor Cyan
    hugo new content/en/posts/$EnName.md --kind post
} else {
    Write-Host "Skipping English post creation." -ForegroundColor Yellow
}

Write-Host " "
Write-Host "Press any key to exit..." -ForegroundColor Gray
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") | Out-Null
