---
layout: post
disqus: true
cover: 'assets/images/cover8.jpg'
title: AWS https CloudFront with Free Custom SSL
date: '2015-06-13 08:48:15'
tags: AWS SSL
subclass: 'post tag-test tag-content'
categories: 'ashishapy'
navigation: True
logo: 'assets/images/logofh.png'
---

I wanted to deliver images on my website through a secure CDN (in case of AWS, it is CloudFront) to improve performance of my website. 

---
**Synopsis:** 
It's covered in 4 steps. 

1. Get class 1 free SSL from StartSSL
2. Upload certificate to aws for CloudFront
3. Configure Secure CloudFront to deliver images stored on AWS S3 bucket.
4. Setup Route 53 to use cdn subdomain with CloudFront

---
But since I have enabled HTTP Strict Transport Security (HSTS) for all my website subdomains.

==add_header Strict-Transport-Security "max-age=31536000; includeSubdomains;";==

It allows web servers to declare that web browsers (or other complying user agents) should only interact with it using secure HTTPS connections, and never via the insecure HTTP protocol.
After enabling HTTPS my domain is not allowed to serve images over http. 

**Step 1**: 
Let's get a free SSL first.
I got SSL for my domain https://ashishapy.com and one sub domain https://www.ashishapy.com for free. Check my other blog [get-ssl-certificate-free](https://blog.ashishapy.com/part-12-get-ssl-certificate-free/) to know, how to get it. 
Now I want another subdomain https://cdn.ashishapy.com to be served using SSL. Free SSL allows to add only one subdomain along with root domain.

I had two options
A. Go for costly and exhaustive process to get class 2 SSL to add more than one subdomain.
B. Or Get another Class 1 SSL Free for subdomain cdn.ashishapy.com.

Being an individual blogger, I wanted to go for cheapest option without compromising security. I choose option 2, get it using same process explained [get-ssl-certificate-free](https://blog.ashishapy.com/part-12-get-ssl-certificate-free/). 
I have three files Private Key (cdn\_ssl\_private.key), Certificate (cdn\_ssl.crt) and intermediate CA certificate (sub.class1.server.ca.pem)

**Step 2**: 
Upload these files to AWS. You are gonna need AWS command line tool. If you haven’t already installed it then follow [AWS cli installtion guide](http://docs.aws.amazon.com/cli/latest/userguide/installing.html).
you need to associate your Amazon Access key and ID by running 
<code>aws configure</code>

Once AWS cli tool configured, upload the certificate to AWS using following command.

<code>aws iam upload-server-certificate --server-certificate-name cdnashishpy --certificate-body file://cdn-ssl.crt --private-key file://cdn_ssl_private.key --certificate-chain file://sub.class1.server.ca.pem --path /cloudfront/</code>

I named certificate name as 'cdnashishapy', please use your own name to recognise easily in future.
The extra –-path /cloudfront/ to let Amazon know we will be using this on CloudFront otherwise certificate won't show for CloudFront.

Test it, if all is well by running command 
<code>aws iam get-server-certificate --server-certificate-name cdnashishapy</code>
It should return uploaded certificate information.

**Step 3**:
Sign in to your AWS account and go to [CloudFront home](https://console.aws.amazon.com/cloudfront/home).
![CloudFront home](//cdn.ashishapy.com/2015/Jun/1cf-1434176197004.jpg)
Click on 'Create Distribution'.

![Select Web](//cdn.ashishapy.com/2015/Jun/2cf-1434176975683.jpg)
In 'Web' section click on 'Get Started' button

In the next screen fill 'Origin Settings' & 'Default Cache Behaviour Settings' as below screen shot. 

Origin Settings:
![Origin Settings](//cdn.ashishapy.com/2015/Jun/3cf-1434177785313.jpg)
I choose a S3 bucket as origin. This should be your source of content.

Default Cache Behaviour Settings:
![Default Cache Behaviour Settings](//cdn.ashishapy.com/2015/Jun/4cf-1434178088818.jpg)

Distribution Settings:
Here comes the critical part of the setup.
![Distribution Settings](//cdn.ashishapy.com/2015/Jun/5cf-1434178922019.jpg)

Price Class: Choose it based on your most users' geolocation.
Alternate Domain Names (CNAMEs): Give your cdn subdomain name.
SSL Certificate: Select Custom SSL Certificate and choose certificate name from drop down option.

==Custom SSL Client Support: I choose 'Only Clients that Support Server Name Indication (SNI)'. This option limits the browsers you can serve. Check what browser supports SNI.
Mostly, it’s not supported in IE at all on Windows XP and earlier and Android 2.2 default browser. Still recommended to do your own analysis.==
You can choose 'All Clients' but there are charges for that.

Click on 'Create Distribution' button to create Secure CloudFront Distribution.
![CloudFront Distribution](//cdn.ashishapy.com/2015/Jun/6CF-1434181909661.jpg)
This will take 15-20 mins to get status as 'Enabled'.
Copy 'Domain Name' value, you will need it to set up DNS in next step.

You are just one step away from setting up you secure CDN.

**Step 4**:
Go to your [AWS Route53 Hosted Zones](https://console.aws.amazon.com/route53/home#hosted-zones:).
Create a Record Set.
![Create a Record Set](//cdn.ashishapy.com/2015/Jun/6cfr53-1434183046874.jpg)
Paste CloudFront DomainName copied from Step 3 in Value.
Save the record set and wait for couple of mins.

Congratulations! You have successfully created a secure CDN.

Please leave your comments here or discuss on Twitter.