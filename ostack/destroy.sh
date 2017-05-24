#!/usr/bin/env bash
set -e
# Destroys a OpenLava deployment in OpenStack
# The script assumes that env vars for authentication with OpenStack are already present.

## Customise this ##
export TF_VAR_DEPLOYMENT_KEY_PATH="/path/to/your/key"

# Destroy everything
cd terraform || exit
terraform destroy --force
