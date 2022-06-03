"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


################################################################
# Storage Account :
# Storage account name must be between 3 and 24 characters in length and use numbers and lower-case letters only.
$Global:SAName = "alexeisaterraform"
#southcentralus centralus francecentral
$Global:SALocation = $RGLocation
$Global:SAKind = "BlockBlobStorage"
$Global:SASKU = "Standard_LRS"
$Global:SCName = "terraform-container"
$Global:SCAuthMode = "login"
$Global:SCPublicAccess = "container"



#######################################################################
#Create the block blob storage account :

az storage account create `
    --resource-group $RGName `
    --name $SAName `
    --location $SALocation 
    #--kind $SAKind `
    #--sku $SASKU


################################################################
#Create the container :

az storage container create `
 --account-name $SAName `
 --name $SCName `
 --auth-mode $SCAuthMode `
 --public-access $SCPublicAccess



