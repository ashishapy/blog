---
layout: post
disqus: true
cover: 'assets/images/cover8.jpg'
title: Create AWS Https / SSL Load Balancer
date: '2015-05-24 03:31:00'
tags: AWS SSL
subclass: 'post tag-test tag-content'
categories: 'ashishapy'
navigation: True
logo: 'assets/images/logofh.png'
---

I got class 1 SSL certificate free from [StartSSL](https://www.startssl.com/) for my domain. 
If you are interested to know more about this, follow my posts here [Get SSL Certificate (Free) & Enable https on nginx](http://bit.ly/1L6XePf)

I have hosted my domain on AWS EC2 instance and I want to build it around scalable & reliable architecture. Using load balancer with auto scaling group is the way to go.

I took below steps to achieve this.
A. Create HTTPS / SSL Load Balancer (Talk of the post)
B. Create Auto scaling group using above load balancer
C. Configure Route 53 to use load balancer instead of Elastic IP.

Let's build AWS HTTPS / SSL EC2 load balancer.

**Synopsis:**
Topics covered are, roughly.
A. Define Load Balancer Protocol
B. Assign Security Group
C. Assign SSL Certificate
D. Add EC2 Instance

You should have aws account, basic understanding of aws and one or more running EC2 instances before creating load balancer.

**Step 1:**
Login with your aws credentials to go to [aws ec2 management console](https://ap-southeast-1.console.aws.amazon.com/ec2/v2/home).
Check the region you are in and it is as expected.
Click on 'Load Balancers' under 'Network & Security' section.
!['Load Balancers' under 'Network & Security'](//cdn.ashishapy.com/2015/May/1elb-1432444010267.jpg)
Click 'Create Load Balancer' on right side of screen.
![Click 'Create Load Balancer'](//cdn.ashishapy.com/2015/May/2elb-1432444285176.jpg)

**Step 2:**
Define basic configuration of load balancer.
Add https listener configuration, https protocol for both load balancer & instance.
![basic configuration of load balancer](//cdn.ashishapy.com/2015/May/3elb-1432444641729.jpg)
Click on 'Next: Assign Security Group'

**Step 3:**
Add security group. Either choose existing security group or create a new one. Allow all http & https traffic to your load balancer.
![Add security group](//cdn.ashishapy.com/2015/May/4elb-1432446047203.jpg)
Click on 'Next: Configure Security Settings'.

**Step 4:**
Here it gets bit tricky. Provide your SSL certificate details.
![SSL certificate details](//cdn.ashishapy.com/2015/May/5elb-1432446553171.jpg)
==I had class 1 private key & SSL certificate from StartSSL which was pem encoded. In case you want to know, how to get these, please check my post here [Part 1/2 - Get SSL certificate (free)](https://blog.ashishapy.com/part-12-get-ssl-certificate-free/)==

**Private Key:** 
Copy & paste content of private key (ssl.key) in this box.
**Public Key Certificate:** 
Copy & paste content of your domain certificate (ssl.crt) here.
**Certificate Chain:**
Copy and paste content of your certificate of intermediate CA (sub.class1.server.ca.pem). Do not use certificate of Root CA. It won't work here.

Remove any extra space at the end of key / certificate. 

**Step 5:**
Complete rest of the steps as per instruction on UI.

*Configure Health Check:* 
 Keep default values there or you can choose to make changes as per own preferences. Click on 'Next: Add EC2 Instances'.

*Add EC2 Instances:*
Select EC2 instances, you wanna add to the load balancer. Click on 'Next: Add Tag'

*Add Tags:*
Create tag here or leave it blank as I did. Click 'Review & Create'

*Review:*
Review the details you entered before in this screen. If all are good then click on 'Create' button.

The next screen will show you the status of load balancer. If all went well then it will create load balancer. In case you get any error related to private key or certificate then you have go through whole process again to create load balancer. This time carefully enter private key & certificate.

Well Done! You got a load balancer for your EC2 instances which is https enabled.

Please leave comments / reviews or share on twitter.
