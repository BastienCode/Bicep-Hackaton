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

- [Azure Cli]

Se connecter
```cli
az login
```

Vérifier sa souscription et la sélectionner
```cli
az account list -o table
az account set -s <subId>
```

Lister resource group et en supprimer un
```cli
az group list -o table
az group delete -g <groupName>
```