# Deploy module 1
1. Deploy RG
```cli
az deployment sub what-if -f rg.bicep -l francecentral
az deployment sub create -f rg.bicep- l francecentral
```
2. Deploy STA
```cli
az deployment group create -f ./storage.bicep -g 'prod-labBicep01-rg'
```
