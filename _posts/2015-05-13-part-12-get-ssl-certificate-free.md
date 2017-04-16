---
layout: post
disqus: true
cover: 'assets/images/cover7.jpg'
title: Part 1/2 - Get SSL certificate (free)
date: '2015-05-13 08:05:53'
tags: SSL
subclass: 'post tag-test tag-content'
categories: 'ashishapy'
navigation: True
logo: 'assets/images/logofh.png'
---

I want a totally, 100% free certificate so I’m going to use [StartSSL](https://www.startssl.com/) class 1 certificate. Before you go ahead, please check StartSSL / StartCom reviews and their policies (recommended).

**Limitations of StartSSL Free:**
While certificates are free for certain uses, there are limitations imposed unless an upgrade is purchased.

* One-year certificate validity (new certificate can be issued for free at any time).
* One domain plus one host name per certificate (e.g. www.yourDomain.com and yourDomain.com, or www.service.yourDomain.com and yourDomain.com).
* No commercial use
* Certificate revocation requires a fee

---
**Previous**:

* [Introduction: Get SSL Certificate (Free) & Enable https on nginx]({% post_url 2015-05-09-get-ssl-certificate-free-enable-https-on-nginx %})
* [Signup for StartSSL]({% post_url 2015-05-09-signup-for-startssl %})

**Next**:

[Part 2/2 - Configure SSL on nginx web server]({% post_url 2015-05-17-part-22-configure-nginx-web-server %})

---
**Synopsis:** 
Topics covered are, roughly.
A. Signup for StartSSL
B. Get domain validated
C. Private Key & Certificate Signing Request (CSR)
D. Prepare a unified certificate & protect private key

One needs to signup StartSSL & if you haven't done so for, here is a blog to signup for startSSL.
[Signup for StartSSL]({% post_url 2015-05-09-signup-for-startssl %}) . Signup then come back to this post again to continue.

Once you signup & certificate is installed on your browser, StartSSL will be able to authenticate you.

**Validations Wizard:**

1. You should be able see these tabs on screen after signup.
![Validation Wizard](//cdn.ashishapy.com/2015/May/2AuthSSL-1431367260004.jpg)
In case you don't see above tabs then click on 'Control Panel' on right corner then on 'Authenticate'.
![Control Panel](//cdn.ashishapy.com/2015/May/1AuthSSL-1431367398701.jpg)
Click on 'Validations Wizard'. We are going validate our domain so select 'Domain Name Validation' from drop down.
![Validation Wizard](//cdn.ashishapy.com/2015/May/3AuthSSL-1431369562298.jpg)

2. Enter your domain name 
![Enter your domain name](//cdn.ashishapy.com/2015/May/4AuthSSL-1431411787617.jpg)

3. Choose email address you have access to 
![Choose email address](//cdn.ashishapy.com/2015/May/5AuthSSL-1431413486102.jpg)

This gets bit tricky. If You have chosen to hide your email id by proxy (as I did) while registering the domain then you will see last option as proxy mail id, else you should see your email id. Select last option and you will get mail forwarded by proxy mail id to your email id.

4. Domain Verification code
![Domain Verification code](//cdn.ashishapy.com/2015/May/6AuthSSL-1431529399603.jpg)

You should receive an email with verification code as below.

![email Verification code](//cdn.ashishapy.com/2015/May/6AuthSSLmail-1431415290094.jpg) 

Copy verification code from email and paste it in StartSSL verification code input box. Click on 'Continue' button.

5. Validation Success!
![validation success](//cdn.ashishapy.com/2015/May/7AuthSSL-1431504728128.jpg)

Wow! we have successfully validated our domain. Let's get private key and certificate for the domain.

**Certificates Wizard:**

1. Click on 'Certificates Wizard'
![Certificate Wizard](//cdn.ashishapy.com/2015/May/1SSLCert-1431500670158.jpg)
Then select 'Web Server SSL/TLS Certificate' from drop down in 'Certificate Target' field. Click on 'Continue' button.

2. Generate Private Key
![Generate Private Key](//cdn.ashishapy.com/2015/May/2SSLCert-1431500894187.jpg)
Enter key password and note it down somewhere safe. You are gonna need it later. Keep key size 2048 for better security and performance. Click on 'Continue' button.

3. Save Private Key & Decrypt the key as per instruction.
![Save Private Key](//cdn.ashishapy.com/2015/May/3SSLCert-1431504329620.jpg)
You got private key for your domain. Keep it safe place where only you can access it. Click on 'Continue' button.

4. Select your validated domain from drop down option.
![Add domain](//cdn.ashishapy.com/2015/May/4SSLCert-1431501233378.jpg)
Click on 'Continue' button.

5. Add one subdomain 
![Add subdomain](//cdn.ashishapy.com/2015/May/5SSLCert-1431533738187.jpg)
Choose subdomain name you want to add, wisely. You will be able to access your bare domain and one subdomain only through the certificate. I used 'www' subdomain, so that user should be able to use my website with or without 'www'. But you are free to choose any subdomain of your choice.
Click on 'Continue' button.

6. Ready for certificate
![Ready for certificate](//cdn.ashishapy.com/2015/May/6SSLCert-1431501735690.jpg)
Click on 'Continue' button.

7. Wait for email confirmation
![Wait for email](//cdn.ashishapy.com/2015/May/7SSLCert-1431501858450.jpg)

I got email within 15 mins.
![Email confirming the certificate](//cdn.ashishapy.com/2015/May/7SSLCertmail-1431502145843.jpg)
Email confirms that Certificate has been issued for your bare domain & one subdomain. Let's go and grab it.

**Tool Box:**

1. Click on 'Tool Box' then 'Retrieve Certificate'
![Retrieve Certificate](//cdn.ashishapy.com/2015/May/1SSLTool-1431502783011.jpg)

2. Select Certificate
![Select Certificate](//cdn.ashishapy.com/2015/May/2SSLTool-1431503013396.jpg)
Certificate is available to retrieve named on subdomain. Select & click on 'Continue' button.

3. Copy Certificate and save it with name ssl.crt
![Copy Certificate](//cdn.ashishapy.com/2015/May/3SSLTool-1431503144980.jpg)

4. Get StartCom CA Certificates
![StartCom CA Certificates](//cdn.ashishapy.com/2015/May/4SSLTool-1431503287930.jpg)
Get root and intermediate certificates. You need both certificates along with your subdomain certificate, to create a unified certificate.
Alternatively use below commands to get root and intermediate certificates.
<code>wget http://www.startssl.com/certs/ca.pem
wget http://www.startssl.com/certs/sub.class1.server.ca.pem</code>

5. Create a unified certificate from your certificate and the CA certificates
<code>cat ssl.crt sub.class1.server.ca.pem ca.pem > ssl-unified.crt</code>
ssl-unified.crt will be certificate for your domain & a subdomain.

6. Protect your key from prying eyes
<code>chmod 600 ssl.key</code>

We have ssl.key (Private Key) & ssl-unified.crt (Certificate). Let's configure web server (nginx) to use these two and configure for https along with some other security stuff in 2nd and last part of the series.
[Part 2/2 - Configure SSL on nginx web server]({% post_url 2015-05-17-part-22-configure-nginx-web-server %})