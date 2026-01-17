### Key Highights


#### Official Doc: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group

---

1. `security group: nautilus-sg`

2. `description: Security group for Nautilus App Servers.`

3. `inbound rule: HTTP | Port 80 | source CIDR range 0.0.0.0/0.`

4. `Another inbound: SSH | Port 22 | source CIDR range 0.0.0.0/0.`

---

## <b>`Solution`</b>

- Create main.tf
- Check main.tf

###
- `terraform init`
- `terraform fmt`
- `terraform validate`
- `terraform plan`
- `terraform apply`