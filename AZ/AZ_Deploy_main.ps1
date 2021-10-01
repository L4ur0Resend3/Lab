clear-host
<#
#login no azure e escolhendo o diretorio
Connect-AzAccount
Set-AzContext -TenantId 0a33f6ee-f2d8-450c-b5da-013bf651fdb2
Get-AzResourceGroup -Name "rg-localiza"
Set-AzDefault -ResourceGroupName "rg-localiza"
#>


#criando vnet
write-host "Atualizando Vnet-localiza..." -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZ\1vnet.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeployVnet"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile


#criando pip
write-host "Atualizando pip..." -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZ\2pip.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeploygateway"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile


#criando vng
write-host "Atualizando VNG..." -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZ\3vng.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeploygateway"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile


 #criando ing
write-host "Atualizando ing..." -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZ\4ing.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeploygateway"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile

   #criando con
write-host "Atualizando con..." -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZ\5conn.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeploygateway"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile

     #criando rc
write-host "Atualizando con..." -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZ\6rc.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeploygateway"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile

  #criando DNS
  write-host "Atualizando dns" -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZ\7dns.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeploygateway"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile


  #criando Frontend
  write-host "Atualizando dns" -ForegroundColor Cyan
$templateFile = "C:\scripts\LabL\Lab\AZFrontEnd\8frontenddocker.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeploygateway"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile