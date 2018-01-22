#!/usr/bin/env bash
set -e
# Destroys a OpenLava deployment in OpenStack
# The script assumes that env vars for authentication with OpenStack are already present.

## Customise this ##
export TF_VAR_DEPLOYMENT_KEY_PATH="$PUBLIC_KEY"

# Point to newer version of Terraform
export PATH=/usr/lib/terraform_0.9.11:$PATH

# Destroy everything
cd ostack/terraform || exit
terraform destroy --force --input=false --state=$PORTAL_DEPLOYMENTS_ROOT'/'$PORTAL_DEPLOYMENT_REFERENCE'/terraform.tfstate'
