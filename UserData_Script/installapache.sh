#! /bin/bash
yum update
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Deployed Machine via Terraform</h1>" | sudo tee /var/www/html/index.html
