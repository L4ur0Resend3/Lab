clear-host
<#
#login no azure e escolhendo o diretorio
Connect-AzAccount
Set-AzContext -TenantId 0a33f6ee-f2d8-450c-b5da-013bf651fdb2
Get-AzResourceGroup -Name "rg-localiza"
Set-AzDefault -ResourceGroupName "rg-localiza"
#>


#criando vnetdmz
write-host "Atualizando Vnet-localiza..." -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZFrontEnd\8vnet.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeployVnet"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile


#criando pip
write-host "Atualizando Vnet-localiza..." -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZFrontEnd\9pip.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeployVnet"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile



#criando pip
write-host "Atualizando Vnet-localiza..." -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZFrontEnd\10nat.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeployVnet"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile

  #criando pip
write-host "Atualizando Vnet-localiza..." -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZFrontEnd\11frontend.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeployVnet"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile
 
