# Lab Localiza

**Rede DMZ** 
PIP(IP) - 20.81.17.107
PIP(DNS) - frontendlablocaliza.eastus.cloudapp.azure.com

NAT - DMZNAT

Vnet - DockerFrontEnd
Subnet - 10.2.0.0/24

Container instances - 10.2.0.4 80
Image - mcr.microsoft.com/azuredocs/aci-helloworld:latest

Player - Azure

**Rede Backend**
Vnet - vnet-localiza
Subnet - 10.0.0.0/24

Virtual machine  backend-  10.0.0.5 80

Private DNS zone - lablocaliza.lab
DB - 172.16.32.151

VPN
Virtual network gateway - vng-localiza
PIP - 40.71.65.197 (pip-vng-localiza)

Player - Azure

**Rede BD**

VPN SiteToSite - AWS_AZURE
IP - 40.71.65.197

VPG - VPGLocaliza

VPC - LocalizaLAB
SubNet - 172.16.32.0/24

EC2 - ec2bd (mysql)
IP - 172.16.32.151
