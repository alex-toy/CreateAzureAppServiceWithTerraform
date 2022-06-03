. commands\ActiveDirectory\AD_utils.ps1

$subscriptionId = Read-Host -Prompt "Enter your subscription id"
$Global:credentials = New-AppRegistration `
    -AppRegistrationName "alexeiapp" `
    -SubscritionId $subscriptionId 
$credentials 

