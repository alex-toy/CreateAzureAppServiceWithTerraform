################################################################
# Variables :

#southcentralus centralus francecentral
$Global:RGName = "terraform-rg"
$Global:RGLocation = "francecentral"


#######################################################################
# Steps :

az group create --name $RGName --location $RGLocation

."commands\ActiveDirectory\AppRegistration_create.ps1"

."commands\StorageAccount\StorageAccount_create.ps1"

