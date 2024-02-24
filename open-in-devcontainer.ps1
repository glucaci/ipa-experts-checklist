# PowerShell script to open the current directory in a VSCode devcontainer

# Convert the current path to Windows format (if running under WSL, this would be necessary, but in pure Windows, it's already in the correct format)
$mypath = $PWD.Path

# Encode the path to a hex format similar to what's done with hexdump in the provided bash command
# PowerShell doesn't have a built-in equivalent to `hexdump`, but we can accomplish the same with a function
function ConvertTo-HexString {
    param([string]$InputString)
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($InputString)
    $hexString = ($bytes | ForEach-Object { $_.ToString("x2") }) -join ''
    return $hexString
}

$p = ConvertTo-HexString -InputString $mypath

# Use the encoded path in the folder-uri argument
$folderUri = "vscode-remote://dev-container+${p}/workspaces/" + $(Split-Path -Leaf $mypath)

# Open VSCode with the specified folder URI
code --folder-uri $folderUri
