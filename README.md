# Snowflake_TF_CC_CICD
installing terraform 
testing it 

The pricipal of terraform is quite simple. we have several files (we can name them as we like since all the files will be concatenated; but better to follow the conventional naming) each contains a set of configurations (depending on the provider : Sowflake here for example) that get executed to modify the infra of the provider remotely using only code !

explain the structure of the project environment specific files and modules, dev and prod and leter the cicd workflow !

if we have a service principle the secrets to connect to azure backend are the following : 

export ARM_CLIENT_ID="your-client-id"
export ARM_CLIENT_SECRET="your-client-secret"
export ARM_SUBSCRIPTION_ID="your-subscription-id"
export ARM_TENANT_ID="your-tenant-id"

pay attention to how you set your environment variables locally !! Terraform looks for environment variables before falling back on the values in .tfvars files or variables.tf. Specifically, when an environment variable follows the pattern TF_VAR_<variable_name>, or a variable named the same way as the provider parameters, Terraform automatically uses it to populate the corresponding variable. For example if we have both SNOWFLAKE_PRIVATE_KEY_PATH and TF_VAR_SNOWFLAKE_PRIVATE_KEY, Terraform might be confused about which one to use. the best thing is to use environment variables only for things we can't store in the .tfvars or variables.tf files such as the private key.

explain how to generate the key pair to authenticate to snowflake: 

using openssl 

setting the public key for the user in snowflake UI

explain how to set locally the environment variable of the private key using powershell in widows for example : 

[System.Environment]::SetEnvironmentVariable("TF_VAR_SNOWFLAKE_PRIVATE_KEY", (Get-Content -Raw "C:\Users\ZAKARIA\.ssh\encoded_key.txt"), "User")

