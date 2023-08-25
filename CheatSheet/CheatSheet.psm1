function CheatSheet-Get-CheatSheet()
{
    <#
    .DESCRIPTION
		Install a below tool on your WSL instance:
        Tool: https://github.com/chubin/cheat.sh#installation

    .EXAMPLE
        CheatSheet-Get-CheatSheet "cht.sh powershell export function"
    #>

    [OutputType([System.Void])]
    param
    (
        [Parameter(Mandatory, HelpMessage="Provide technology topic that you want to get cheat sheet for.")][string]$TechnologyTopicCheatSheet
    )

    if ([string]::IsNullOrWhiteSpace($TechnologyTopicCheatSheet))
    {
        throw [System.ArgumentNullException] "Technology topic cannot be null."
    }

    wsl cht.sh $TechnologyTopicCheatSheet
}

Export-ModuleMember -Function CheatSheet-Get-CheatSheet
