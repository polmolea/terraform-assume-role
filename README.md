# Testing external bash scripts using roles

How to run this test:

0. Ensure you have default credentials in your AWS CLI locations and edit the `aws.config` file to reference a role that can be assume by your default credentials.
1. `terraform init`
2. `terraform apply` will use your default credentials and will output the caller identity as such
3. `AWS_PROFILE=foo AWS_CONFIG_FILE=aws.config terraform apply` will use the profile `foo` mentioned in the `aws.config` file and will output the caller identity as such
