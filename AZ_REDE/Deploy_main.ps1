clear-host
write-host "Atualizando Vnet-localiza..."
$templateFile = "C:\scripts\LabL\Lab\AZ_REDE\template.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeployVnet"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile



  write-host "Atualizando VNG..."
$templateFile = "C:\scripts\LabL\Lab\AZ_REDE\vng.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeploygateway"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile
#>