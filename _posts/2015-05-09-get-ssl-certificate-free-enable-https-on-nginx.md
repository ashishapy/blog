---
layout: post
disqus: true
cover: 'assets/images/cover3.jpg'
title: 'Introduction: Get SSL Certificate (Free) & Enable https on nginx'
date: 2015-05-09 09:58:01
tags: SSL
subclass: 'post tag-test tag-content'
categories: 'ashishapy'
navigation: True
logo: 'assets/images/logofb.png'
---

So, you got your domain up & working, let's say, it is http://yourDomain.com, Great!!!
But wait! isn't https:// ? No problem, you must not be dealing with any private or sensitive data of your business and your customer.

What!!! You are!!! 
Not cool, HTTPS is secure, but HTTP is always vulnerable to eavesdropping attacks where hackers access sensitive information and website accounts. So let's do HTTPS.

Few days ago, I had setup my own domain & I want to share how I did it.

1. Register my domain name on godaddy
2. Use AWS for Route 53, S3, Security Group, Elastic IP & of course EC2 instance. I am using [AWS Free Tier](http://aws.amazon.com/free/).
3. Install all necessary softwares on EC2 instance. I installed nginx web server on EC2 instance & configured as required.
4. Using Route 53 to configure the DNS records to point our domain at our site.
5. Open browser & enter http://yourDomain.com. Bingo! everything works as expected. But it is not secure, https:// enabled.

Next is to make it secure using SSL certificate & enabling https:// for your domain, this is what the blog is all about.

The next three blogs, are going to be ...

* **[Signup for StartSSL]({% post_url 2015-05-09-signup-for-startssl %}):** Signup before using services of startSSL like generating SSL certificate.

* **[Part 1/2 - Get SSL certificate (free)]({% post_url 2015-05-13-part-12-get-ssl-certificate-free %}):** I want a totally, 100% free cert so I’m going to use [StartSSL](https://www.startssl.com).
* **[Part 2/2 - Configure SSL on nginx web server]({% post_url 2015-05-17-part-22-configure-nginx-web-server %}):** to use SSL certificate & enable HTTPS along with some other security stuff.