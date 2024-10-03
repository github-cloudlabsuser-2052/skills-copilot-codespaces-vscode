# Login to Azure
Connect-AzAccount

# Set variables
$resourceGroupName = "myResourceGroup"
$location = "EastUS"
$storageAccountName = "mystorageaccount"
$skuName = "Standard_LRS"

# Create resource group
$resourceGroup = Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue
if (-Not $resourceGroup) {
    $resourceGroup = New-AzResourceGroup -Name $resourceGroupName -Location $location
}

# Create storage account
$storageAccount = New-AzStorageAccount -ResourceGroupName $resourceGroupName `
    -Name $storageAccountName `
    -Location $location `
    -SkuName $skuName `
    -Kind StorageV2

# Output storage account details
$storageAccount | Format-List