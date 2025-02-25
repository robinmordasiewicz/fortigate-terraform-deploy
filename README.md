# Terraform Deployment Scripts

This repository contains a set of Terraform scripts to deploy FortiGate VMs on different cloud providers. The scripts are designed to deploy a single FortiGate VM in a standalone VPC/VNet. The scripts can be easily modified to deploy multiple FortiGate VMs in an HA configuration.

## Azure

```bash
az account list --query "[?name=='<YourSubscriptionName>'].id" --output tsv
az ad sp create-for-rbac --role Contributor --scopes /subscriptions/<subscription id output from previous command> --json-auth
```

## Support

Fortinet-provided scripts in this and other GitHub projects do not fall under the regular Fortinet technical support scope and are not supported by FortiCare Support Services.
For direct issues, please refer to the [Issues](https://github.com/fortinet/fortigate-terraform-deploy/issues) tab of this GitHub project.
For other questions related to this project, contact [github@fortinet.com](mailto:github@fortinet.com).
