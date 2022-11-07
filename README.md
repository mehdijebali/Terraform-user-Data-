# Provision EC2 Instance with User Data 
In this Lab, we will automate the deployment of EC2 instance using user data, we will try to install apache by two methods: **Cloudinit** and **Script**. The following diagram describes the provisionned infrastructure:
![](./Lab_Results/user_data.png)
## About User Data
In AWS, user have option to pass user data to the instance at launch. In fact, we can pass two types of user data to Amazon EC2: shell scripts and cloud-init directives.

User data shell scripts must start with the `#!` characters and the path to the interpreter you want to read the script (commonly `/bin/bash`). Note that scripts entered as user data are executed as the root user, so do not use the **sudo** command in the script.

By default, user data scripts and cloud-init directives run only during the first boot cycle when an EC2 instance is launched. If user stop an instance, modify the user data, and start the instance, the new user data is not executed automatically.
## Instructions
1. Clone the project 
```
git clone https://github.com/mehdijebali/Terraform-user-Data-.git
```
2. In the project root directory, create an SS key and name it **levelup_key**
```
ssh-keygen
``` 
3. Export your AWS Credentials
```
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=us-west-2
```
4. Change the directory (**UserData_CloudInit** or **UserData_Script**), initiate Terraform in order to install the declared provider in `provider.tf` file
```
cd UserData_CloudInit || cd UserData_Script
terraform init
```
5. If you want to see your provisionning details, run the following command
```
terraform plan
```
6. Apply modifications
```
terraform apply
```
## Expected Results
After the provisionning is done, we can verify the Apache deployment by copying the instance public IP to the browser. You should find a webpage similar to the following:
![](./Lab_Results/user_data_script.png)