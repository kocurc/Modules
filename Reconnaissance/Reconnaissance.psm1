function Reconnaissance-Scan-PhoneNumber()
{
    <#
    .DESCRIPTION
        Install a below tool on your WSL instance:
        Tool: # https://github.com/sundowndev/phoneinfoga

    .EXAMPLE
        Reconnaissance-Scan-PhoneNumber "+48123456789"
    #>
    
    [OutputType([System.Void])]
    param
    (
        [Parameter(Mandatory, HelpMessage="Provide phone number you want to scan for.")][string]$PhoneNumber
    )

    if ([string]::IsNullOrWhiteSpace($PhoneNumber))
    {
        throw [System.ArgumentNullException] "PhoneNumber cannot be null"
    }

    wsl phoneinfoga scan --number $PhoneNumber
}

Export-ModuleMember -Function Reconnaissance-Scan-PhoneNumber
