# Function to remove a folder if it exists
function Remove-FolderIfExists {
    param (
        [string]$folderPath,
        [string]$folderName
    )
    
    if (Test-Path $folderPath) {
        Write-Host "Folder $folderName found"
        Remove-Item $folderPath -Recurse -Force
        Write-Host "Folder and cache $folderName clean"
    } else {
        Write-Host "Folder $folderName not found"
    }
}

# Check for Local folder
if (Test-Path "Local") {
    Set-Location "Local"

    # Check for Google folder
    if (Test-Path "Google") {
        Write-Host "Folder Google found"
        Set-Location "Google"

        # Check for Chrome folder
        if (Test-Path "Chrome") {
            Write-Host "Folder Chrome found"
            Set-Location "Chrome"

            # Check for User Data folder
            Remove-FolderIfExists "User Data" "User Data"

            Set-Location ..\..
        } else {
            Write-Host "Folder Chrome not found"
            Set-Location ..
        }
    } else {
        Write-Host "Folder Google not found"
    }

    # Check for Yandex folder
    if (Test-Path "Yandex") {
        Write-Host "Folder Yandex found"
        Set-Location "Yandex"

        # Check for YandexBrowser folder
        if (Test-Path "YandexBrowser") {
            Write-Host "Folder YandexBrowser found"
            Set-Location "YandexBrowser"

            # Check for User Data folder
            Remove-FolderIfExists "User Data" "User Data"

            Set-Location ..\..
        } else {
            Write-Host "Folder YandexBrowser not found"
            Set-Location ..
        }
    } else {
        Write-Host "Folder Yandex not found"
    }

    # Check for Mozilla folder
    if (Test-Path "Mozilla") {
        Write-Host "Folder Mozilla found"
        Set-Location "Mozilla"

        # Check for Firefox folder
        if (Test-Path "Firefox") {
            Write-Host "Folder Firefox found"
            Set-Location "Firefox"

            # Check for Profiles folder
            Remove-FolderIfExists "Profiles" "Profiles"

            Set-Location ..\..
        } else {
            Write-Host "Folder Firefox not found"
            Set-Location ..
        }
    } else {
        Write-Host "Folder Mozilla not found"
    }

    Set-Location ..
} else {
    Write-Host "Folder Local not found"
}

# Check for Roaming folder
if (Test-Path "Roaming") {
    Set-Location "Roaming"

    # Check for GitHub Desktop folder
    Remove-FolderIfExists "GitHub Desktop" "GitHub Desktop"

    Set-Location ..
} else {
    Write-Host "Folder Roaming not found"
}

# Check for Documents folder
if (Test-Path "Documents") {
    Write-Host "Folder Documents found"
    Set-Location "Documents"

    # Check for GitHub folder
    Remove-FolderIfExists "GitHub" "GitHubRep"

    Set-Location ..
} else {
    Write-Host "Folder Documents not found"
}

# Pause the script
Read-Host -Prompt "Press Enter to continue"
