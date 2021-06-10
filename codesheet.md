- Mettre à jour Bicep
> choco upgrade bicep -y

> az bicep upgrade

- [Azure Cli] Deployer avec Bicep

```cli
az deployment sub what-if -f file.bicep -l francecentral
az deployment sub create -f file.bicep -l francecentral
```

```cli
az deployment group what-if -f file.bicep -l francecentral
az deployment group create -f file.bicep -l francecentral
```

```powershell
New-AzResourceGroupDeployment -TemplateFile ./main.bicep -ResourceGroupName my-rg
``` 

