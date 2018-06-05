
# Variable definitions
variable "environment" { 
    type = "string" 
    description = "Name for the environment being deployed to"
}

# Output definitions
output "environment" { value = "${var.environment}" }
output "environment_lowercase" { value = "${lower(var.environment)}" }

# as a rule, we're going to prefix object names with "lower(env)-tf", so setup a var for it
# the reason for this is to make it easy to determine what resources belong to what environement
# and what resources were created (and should be managed) by terraform
output "object_name_prefix" { value = "${lower(var.environment)}-tf"}


#########################################################
# hard-coded values output for re-use elsewhere
#########################################################

# region where resources will be created by default
output "default_resource_region" { value = "us-east-1" }

output "waze_data_url" { value = "https://world-georss.waze.com/rtserver/web/TGeoRSS?tk=ccp_partner&ccp_partner_name=PREFEITURA%20MUNICIPAL%20DE%20JOINVILLE&format=JSON&types=traffic,alerts,irregularities&polygon=-48.802000,-26.130000;-48.883000,-26.107000;-49.161000,-26.059000;-49.224000,-26.103000;-49.239000,-26.178000;-49.245000,-26.306000;-49.043000,-26.358000;-48.923000,-26.410000;-48.898000,-26.444000;-48.858000,-26.438000;-48.802000,-26.395000;-48.727000,-26.354000;-48.746000,-26.285000;-48.802000,-26.130000;-48.802000,-26.130000;-48.802000,-26.130000;-48.802000,-26.130000;-48.802000,-26.130000;-48.802000,-26.130000;-48.802000,-26.130000;-48.802000,-26.130000;-48.802000,-26.130000;-48.802000,-26.130000;-48.802000,-26.130000" }

output "rds_master_username" { value = "sepud" }

output "rds_master_password" { value = "SM2018_sepud" }

# set a password that we'll later make sure exists in the db on the lambda_role user
output "lambda_db_password" { value = "SM2018_sepud"}