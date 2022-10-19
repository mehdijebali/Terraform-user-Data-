# Provision EC2 Instance with User Data 
In this Lab, we will automate the deployment of EC2 instance using user data, we will try to install apache by two methods: **Cloudinit** and **Script**.
## About User Data
In AWS, user have option to pass user data to the instance at launch. In fact, we can pass two types of user data to Amazon EC2: shell scripts and cloud-init directives.

User data shell scripts must start with the `#!` characters and the path to the interpreter you want to read the script (commonly `/bin/bash`). Note that scripts entered as user data are executed as the root user, so do not use the **sudo** command in the script.

By default, user data scripts and cloud-init directives run only during the first boot cycle when an EC2 instance is launched. If user stop an instance, modify the user data, and start the instance, the new user data is not executed automatically.
