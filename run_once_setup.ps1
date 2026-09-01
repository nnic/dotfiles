if (-not (Get-Command mise -ErrorAction SilentlyContinue)) {
    winget install --id jdx.mise -e --source winget
    # Refresh PATH for the current process so the newly installed mise is found
    $env:Path = [Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' + [Environment]::GetEnvironmentVariable('Path', 'User')
}

if (Get-Command mise -ErrorAction SilentlyContinue) {
    mise install
}
else {
    Write-Host "mise still not found on PATH after install attempt; run 'mise install' manually once it's available." -ForegroundColor Yellow
}
