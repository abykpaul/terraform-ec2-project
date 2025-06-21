# Terraform EC2 Project

## Structure:
- `infra/dev/` - Terraform code to deploy EC2
- `app/` - Sample Dockerfile for future containerization
- `Jenkinsfile` - Uses shared library to run Terraform automation

## Jenkins Integration
- Ensure you have `my-shared-lib` configured in Jenkins.
- Connect this repo as a Jenkins pipeline project.
- Add AWS credentials securely in Jenkins credentials.

This project is free-tier safe for learning! 🚀