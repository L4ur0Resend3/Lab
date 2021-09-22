$templateFile = "C:\scripts\LabL\Lab\AZ_REDE\azuredeploy.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="MainDeploy-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile