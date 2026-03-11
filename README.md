
# on-prem-aws-vpn-v3.0

Terraform repository to automate **AWS Site‑to‑Site VPN connections from On‑Premises to AWS Transit Gateways**.

## Features
- Uses existing TGWs
- Dynamic VPN creation
- Customer Gateways automatically created
- CloudWatch VPN tunnel logging enabled
- TGW Route Table Association
- TGW Route Table Propagation

## Current Deployment
- ST → st-cgw / st-vpn
- OT → ot-cgw1 / ot-vpn1
- OT → ot-cgw2 / ot-vpn2

## Deploy
terraform init
terraform plan
terraform apply
