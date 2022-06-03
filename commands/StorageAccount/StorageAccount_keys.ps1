#######################################################################
# Get new keys from storage account :

$key_data = $(az storage account keys list `
        --resource-group $RGName `
        --account-name $SAName `
        --query '{key : [0].keyName, access_key : [0].value}' | ConvertFrom-Json)

"key : " + $key_data.key
"access_key : " + $key_data.access_key










