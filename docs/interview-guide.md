# Terraform AWS 3-Tier Platform Interview Guide

## Terraform

### Why use Terraform?

Terraform enables Infrastructure as Code, making infrastructure repeatable, version-controlled, and automated.

### Why use Terraform Modules?

Modules improve reusability, maintainability, and separation of responsibilities.

### What is variables.tf?

Defines configurable inputs and removes hardcoded values.

### What is outputs.tf?

Exposes useful resource information after deployment.

### Why use version pinning?

Prevents unexpected provider upgrades from breaking infrastructure.

### What is .terraform.lock.hcl?

Stores exact provider versions for consistent deployments.

---

## AWS Networking

### What is a VPC?

A logically isolated virtual network inside AWS.

### Why create a custom VPC?

To gain full control over networking and security.

### Difference between Public and Private Subnets?

Public subnets have internet access through an Internet Gateway. Private subnets do not.

### Why place backend servers in a private subnet?

To reduce attack surface and improve security.

### What is an Internet Gateway?

A gateway that allows communication between a VPC and the internet.

### What is a Route Table?

Controls how traffic is routed inside a VPC.

---

## Security Groups

### What are Security Groups?

Virtual firewalls that control inbound and outbound traffic.

### Why expose port 8080?

To allow access to the frontend application.

### Why restrict port 3000?

To prevent direct internet access to backend services.

---

## EC2

### Why use EC2?

Provides scalable virtual servers in AWS.

### Why use Ubuntu?

Stable, widely used, and supported across cloud environments.

---

## Docker

### Why use Docker?

Provides portability and consistency across environments.

### Benefits of Containerization?

Simplifies deployments and reduces environment-related issues.

---

## Architecture

### Why use a multi-tier architecture?

Improves scalability, security, and separation of concerns.

### What would you improve next?

* ALB
* Auto Scaling
* CloudWatch
* CI/CD
* Remote State
* RDS
