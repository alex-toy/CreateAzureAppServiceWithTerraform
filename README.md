# Create an Azure AppService applying IaC concepts using Terraform

As soon as downloaded the files :
- turn **terraform_canvas.tfvars** into **terraform.tfvars**.
- turn **main_canvas.tfvars** into **main.tfvars**.
- move those files into  **terraform\environments\test**.

## Preliminary tasks
1. Run **commands\steps.ps1**. You will be prompted for you subscription id.
2. Copy the **client_id**, **client_secret** and **tenant_id** that will appear on the command line. Paste those in the corresponding place in **terraform\environments\test\terraform.tfvars**.
3. Run **commands\StorageAccount\StorageAccount_keys.ps1**. get the **key** and **access_key** and paste them to the corresponding place in **terraform\environments\test\main.tfvars**. Make sure the **storage_account_name** and **container_name** match exactly with the storage account just created.
4. Fill in the values for each **location**, **resource_group**, and **application_type** (application_type has to be globally unique) in the **terraform\environments\test\terraform.tfvars** file.


## Instructions
1. cd **terraform.solution/environments/test**
2. Run the  **terraform init** command. This will Add the **Terraform** executable into the **/environments/test** folder.
3. Once that's complete, run **terraform apply** to create the resources in Azure.


Once done,  run **terraform destroy** to clean up all of our resources.