param (
    [Parameter(Mandatory=$true, Position=0)]
    [String]$np
)

$SecurePassword = ConvertTo-SecureString -AsPlainText $np -Force

Set-LocalUser -Name "Administrator" -Password $SecurePassword
