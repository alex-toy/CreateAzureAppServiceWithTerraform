. commands\ActiveDirectory\AD_utils.ps1

# Show-AllAccounts -MicrosoftAccountEmail 'alexei.80@hotmail.fr'

# $ids = Show-AllAccountIds
# $ids

# Remove-AllAppRegistrations


# $ACCOUNT_KEY=$(
#     az storage account keys list `
#         --resource-group $RGName `
#         --account-name $SAName `
#         --query '[0].value' -o tsv)


# $ACCOUNT_KEY=$(
#     az storage account keys list `
#         --resource-group $RGName `
#         --account-name $SAName `
#         --query '{key : [0].keyName, access_key : [0].value}' | ConvertTo-Json)

# $ACCOUNT_KEY

$key_data = $(az storage account keys list `
        --resource-group $RGName `
        --account-name $SAName `
        --query '{key : [0].keyName, access_key : [0].value}' | ConvertFrom-Json)

$key_data.key
$key_data.access_key
