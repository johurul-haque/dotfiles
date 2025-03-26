Set-Alias -Name webstorm -Value webstorm64.exe
Set-Alias -Name pn -Value pnpm

$PSStyle.FileInfo.Directory = ""

# Requires oh-my-posh
# https://ohmyposh.dev/docs/installation/windows

oh-my-posh init pwsh --config 'C:\Users\johurul\Documents\PowerShell\omp.toml' | Invoke-Expression

function PJson {
    param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        $json
    )
    $json | ConvertFrom-Json | ConvertTo-Json -Depth 100
}
