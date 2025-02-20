# Azure Instructions

Create an auto.tfvars config file

```bash
az login --use-device-code 
az account list --query "[?name=='CSE-SE-DevOps'].id" --output tsv
az ad sp create-for-rbac --role Contributor --scopes /subscriptions/{subscription-id} --json-auth
```
