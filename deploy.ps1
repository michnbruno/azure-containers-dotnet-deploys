# *nix only

$SUB_ID=""

$RESOURCE_GROUP_NAME= "storemnb5"

# specify your preferred region
$REGION= "eastus"

# Follow Azure CLI prompts to authenticate to your subscription of choice
az login
az account set --subscription $SUB_ID

# Create resource group
az group create -n $RESOURCE_GROUP_NAME -l $REGION

# Deploy all infrastructure and reddog apps
 az deployment group create --resource-group $RESOURCE_GROUP_NAME --template-file './Azure/storemnb/main.bicep' --debug

 az logout
