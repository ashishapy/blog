---
layout: post
disqus: true
cover: 'assets/images/cover4.jpg'
title: Part 2/2 - Configure SSL on nginx web server
date: '2015-05-17 19:08:04'
tags: Nginx SSL
subclass: 'post tag-test tag-content'
categories: 'ashishapy'
navigation: True
logo: 'assets/images/logofh.png'
---

nginx (pronounced engine-x) is a free, open-source, light-weight, high-performance, load balancer, HTTP cache, and a web server.

The StartSSL certificate is compatible with nginx. Configure ngnix to use it in this last part of the series.

---
Previous:

* [Introduction: Get SSL Certificate (Free) & Enable https on nginx]({% post_url 2015-05-09-get-ssl-certificate-free-enable-https-on-nginx %})
* [Signup for StartSSL]({% post_url 2015-05-09-signup-for-startssl %})
* [Part 1/2 - Get SSL certificate (free)]({% post_url 2015-05-13-part-12-get-ssl-certificate-free %})

---
We need to modify nginx.conf file, in my case it is located at /etc/ngnix folder.

**Synopsis:** 
Topics covered are, roughly. 
A. Place SSL certificate & private key file on server
B. Configure nginx for SSL
C. Include some important security stuff on nginx
D. Check grade on [SSLlabs](https://www.ssllabs.com/)

we already have done most time consuming task for SSL. Now it's time to feel good. Let's finish the job.

1. Go to your nginx folder & create a directory name 'ssl'. This is the directory we will use to keep SSL certificate & private key
<code>[nginx]$mkdir ssl</code>
Place both files (ssl-unified.crt & ssl.key) in the folder. There are several ways to do this.
I created empty files with same name in 'ssl' folder on server.

 <code>[nginx]$cd ssl
 [ssl]$sudo nano ssl-unified.crt
 </code>
 Copy and paste the content of local ssl-unified.crt file. Save it <code>ctrl+o</code> then exit <code>ctrl+x</code>.
 
 <code>[ssl]$sudo nano ssl.key
 </code>
 Copy and paste the content of local ssl.key file. Save it <code>ctrl+o</code> then exit <code>ctrl+x</code>.

 Verify if both files are there. <code>[ssl]$ls -l</code>.
 
 As pointed in previous blog, Protect your key from prying eyes. Run
<code>chmod 600 ssl.key</code> command.

2. Finally we’re able to configure nginx. Here’s the config I’m using (don’t forget to reload/restart nginx after a config change)
 <code>
    http {
      ...
      server\_tokens off;
      add\_header X-Frame-Options SAMEORIGIN;
      add\_header X-XSS-Protection "1; mode=block";
#
      server {
        listen 80;
        server\_name  .yourDomain.com;
        return 301 https://$host$request\_uri;
#
        location / {
                ...
        }
        ...
      }
      # HTTPS server
      server {
        listen 443 ssl default deferred;
        server\_name .yourDomain.com;
#
        ssl on;
        ssl\_certificate /etc/nginx/ssl/ssl-unified.crt;
        ssl\_certificate\_key /etc/nginx/ssl/ssl.key;
#
        ssl\_session_cache shared:SSL:50m;
        ssl\_session\_timeout 5m;
#
        ssl\_protocols TLSv1 TLSv1.1 TLSv1.2;
        ssl\_ciphers HIGH:!aNULL:!MD5;
        ssl\_prefer\_server\_ciphers on;
#
        add\_header Strict-Transport-Security "max-age=31536000; includeSubdomains;";
#
        location / {
                ...
        }
      }
 }
</code>
Save the nginx.conf.
If you are interested to see some more security parameters and it's explanation, there is nice gist https://gist.github.com/plentz/6737338. It's worth to check it out.

3. Restart nginx to get nginx.conf changes.
<code>$sudo service nginx restart</code>
 If above command doesn't work for you then you might want to refer this  http://nginx.org/en/docs/beginners_guide.html#control 

 Open browser and enter http://yourDomain.com it should go to https://yourDomain.com automatically with green padlock.

 ![https](//cdn.ashishapy.com/2015/May/15944989872_b958dc5552_m-1431886959872.jpg)

 Congratulations!!! You have successfully installed SSL and enabled your domain for https.

4. It's time to go through litmus test, not really. Go to SSLLabs website https://www.ssllabs.com/ssltest/ for ssltest.
Enter your domain name & hit enter. It takes couple of mins to return with test result.
Bingo! You must have got A grade, as I got.
![SSLLab test summary](//cdn.ashishapy.com/2015/May/SSLLab_Summary-1431887799187.jpg)
Smile :) This is very very good rating.
I am sure, A+ rating can be achieved with few more config on nginx.

Seriously, if you made it through the entire guide, it's very impressive. Enjoy your SSL cert and let me know your experience / remarks through twitter link or email me at ashish@ashishapy.com.

Happy Learning!