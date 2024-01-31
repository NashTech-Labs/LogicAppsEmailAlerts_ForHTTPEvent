# Terraform Module: Azure Logic App Workflow

This Terraform module enables the creation of an Azure Logic App workflow that sends email alerts when an HTTP event occurs.

## Prerequisites

Before using this module, ensure you have the following prerequisites installed:

- Terraform (version 0.12 or higher)
- Azure CLI

## Usage

Follow these steps to use the module:

### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone <repository-url>
cd azure-logic-apps
```

### 2. Initialize Terraform

Initialize Terraform in the project directory:

```bash
terraform init
```

### 3. Customize Configuration

Update the `terraform.tfvars` file with your desired configuration:

```hcl
resource_group_name = "example-rg"
location            = "East US"
logic_app_name      = "example-logic-app"
```

### 4. Deploy the Logic App

Apply the Terraform configuration to create the Azure Logic App workflow:

```bash
terraform apply
```

### 5. Access Logic App Endpoint

After deployment, you can access the Logic App endpoint URL using the output variable:

```bash
terraform output logic_app_endpoint
```

## Inputs

- `resource_group_name`: Name of the resource group where the Logic App will be deployed.
- `location`: Azure region where the Logic App will be deployed.
- `logic_app_name`: Name of the Logic App workflow.

## Outputs

- `logic_app_endpoint`: Endpoint URL for triggering the Logic App workflow.

## Notes

- Ensure you have appropriate permissions to deploy Azure resources in your Azure subscription.
- Customize the Logic App definition JSON file (`logic_app_definition.json`) according to your requirements for email content and recipient.

