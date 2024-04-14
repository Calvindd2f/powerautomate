param(
    [string]$Identity,
    [string]$Type
)

# Import the Exchange Online Management Module
if (!(Import-Module ExchangeOnlineManagement){
    Install-Module ExchangeOnlineManagement -Scope CurrentUser
    Import-Module ExchangeOnlineManagement
}

# Connect to Exchange Online; This might require authentication details depending on your setup
# Normally, you would use Connect-ExchangeOnline here, but for automation, ensure you handle authentication appropriately

# Run the Set-Mailbox command
Set-Mailbox -Identity $Identity -Type $Type

# Optional: Check the result or perform additional logging
Write-Output "Mailbox $Identity has been set to type $Type"
