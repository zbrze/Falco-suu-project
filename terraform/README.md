# Terraform
1. Install Terraform
2. Export AWS credentials as described in Learner Lab
3. Initialize Terraform
```
terraform init
```
4. Change values of variables in `variables.tf`
5. Review the plan
```
terraform plan
```
6. Apply the infrastructure
```
terraform apply
```
7. Configure `kubectl`
```
aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)
```

To destroy infrastructure run:
```
terraform destroy
```