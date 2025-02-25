# Deployment of a FortiGate-VM(BYOL/PAYG) on Azure

A Terraform script to deploy a FortiGate-VM(BYOL/PAYG) on Azure

Terraform deploys the following components:

* Azure Virtual Network with 2 subnets
* One FortiGate-VM instances with 2 NICs
* Two firewall rules: one for external, one for internal.

## Requirements

* [Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html) >= 0.12.0
* Terraform Provider AzureRM >= 2.38.0
* Terraform Provider Template >= 2.2.2
* Terraform Provider Random >= 3.0.0

## Deployment

1. Clone the repository.

1. Create an Azure service principal

   ```sh
   az account list --query "[?name=='<YourSubscriptionName>'].id" --output tsv
   az ad sp create-for-rbac --role Contributor --scopes /subscriptions/<subscription id output from previous command> --json-auth
   ```

1. Customize variables in the `terraform.tfvars.example` and `variables.tf` file as needed.  And rename `terraform.tfvars.example` to `terraform.tfvars`.

1. Initialize the providers and modules:

   ```sh
   cd XXXXX
   terraform init
    ```

1. Submit the Terraform plan:

   ```sh
   terraform plan
   ```

1. Verify output.

1. Confirm and apply the plan:

   ```sh
   terraform apply
   ```

1. If output is satisfactory, type `yes`.

   Output will include the information necessary to log in to the FortiGate-VM instances:

   ```sh
   FGTPublicIP = <FGT Public IP>
   Password = <FGT Password>
   ResourceGroup = <Resource Group>
   Username = <FGT Username>
   ```

## Destroy the instance

To destroy the instance, use the command:

```sh
terraform destroy
```

## Requirements and limitations

The terms for the FortiGate PAYG or BYOL image in the Azure Marketplace needs to be accepted once before usage. This is done automatically during deployment via the Azure Portal. For the Azure CLI the commands below need to be run before the first deployment in a subscription.

```sh
BYOL az vm image terms accept --publisher fortinet --offer fortinet_fortigate-vm_v5 --plan fortinet_fg-vm
PAYG az vm image terms accept --publisher fortinet --offer fortinet_fortigate-vm_v5 --plan fortinet_fg-vm_payg_2023
```

## Support

Fortinet-provided scripts in this and other GitHub projects do not fall under the regular Fortinet technical support scope and are not supported by FortiCare Support Services.

For direct issues, please refer to the [Issues](https://github.com/fortinet/fortigate-terraform-deploy/issues) tab of this GitHub project.

For other questions related to this project, contact [github@fortinet.com](mailto:github@fortinet.com)
