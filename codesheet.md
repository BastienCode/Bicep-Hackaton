- Mettre à jour Bicep
> choco upgrade bicep -y

> az bicep upgrade

- [Azure Cli] Deployer Bicep

```cli
az deployment sub what-if -f file.bicep
az deployment sub create -f file.bicep
```

```cli
az deployment group what-if -f file.bicep
az deployment group create -f file.bicep
```

```powershell
New-AzResourceGroupDeployment -TemplateFile ./main.bicep -ResourceGroupName my-rg
``` 