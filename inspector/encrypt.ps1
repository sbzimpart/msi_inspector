param (
    [string]$inputString
)

Add-Type -AssemblyName System.Security

if (-not $inputString) {
    Write-Output "Please provide an input string."
    exit 1
}

# Encrypt the input string
$plainText = $inputString

# Convert the string to bytes
$plainBytes = [System.Text.Encoding]::UTF8.GetBytes($plainText)

# Encrypt using DPAPI with machine scope
$encryptedBytes = [System.Security.Cryptography.ProtectedData]::Protect(
    $plainBytes,
    $null,
    [System.Security.Cryptography.DataProtectionScope]::LocalMachine
)

# Convert the encrypted bytes to a base64 string for storage
$encryptedText = [Convert]::ToBase64String($encryptedBytes)
Write-Output "Encrypted string: enc:$encryptedText"
