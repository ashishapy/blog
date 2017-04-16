---
layout: post
disqus: true
cover: 'assets/images/cover8.jpg'
title: '2/2 Free and secure static website or blog'
date: 2016-03-20 10:00:23
tags: Website CloudFlare
subclass: 'post'
categories: 'ashishapy'
navigation: True
logo: 'assets/images/logofh.png'
---

In the previous post, we hosted a static site using [Jekyll](http://jekyllrb.com/) on [GitHub](https://github.com).
Which can be browsed on <font color="green">username.github.io</font>.

**Previous**:

[1/2 Free and secure static website or blog]({% post_url 2016-02-21-github-pages-and-cloudflare-free-secure-site %})

---

In this post we will configure your custom domain, as a secured website. Assuming you have already bought a domain from any domain provider.

**Synopsis:**

**Part 2:**

1. Setup your domain on Cloudflare
2. Set Cloudflare DNS server in your domain provider
3. Add CNAME file on GitHub repo
4. Verify your website / blog

-----

Without wasting any more time, let's get going.

**1. Setup your domain on Cloudflare**

    1.1 Sign up on [CloudFlare](https://www.cloudflare.com/a/sign-up).
    
    1.2 Add [a site](https://www.cloudflare.com/a/add-site) then click Begin Scan.
    
    1.3 It would take few mins to scan, click on 'Continue Setup'.
    
    1.4 It would show you all DNS setup for you. You may choose default settings and click 'Continue'.
    
    1.5 Select a CloudFlare Plan. Let's select Free Website for free & basic plan. click 'Continue'.
    
    1.6 You would see screen 'Change Your Nameservers'. Note down value of 'Change Nameservers to', probably there would be two.
    
**2. Set Cloudflare DNS server in your domain provider**

    2.1 Login to your domain provider (e.g. GoDaddy, cheapnames, speedhost etc.) from you bought domain name.
    
    2.2 Go to domain DNS settings, you have to figure out where you would find DNS settings, with your domain provider.
    
    2.3 Change 'Nameservers' value to values you noted down from *step 1.6*. Please be informed that it would transfer the control of your site to Cloudflare and you can control DNS setting from Cloudflare now onwards.
    
    2.4 Now wait. The change might take few hours to 48 hours to take effect. You can always go to Cloudflare and check for status 'Active'.
    
**3. Add CNAME file on GitHub repo**

    3.1 Create a file named CNAME on root directory of repo.
    
    3.2 Put your domain name in format mydomain.com or www.mydomain.com. Check this link (https://help.github.com/articles/using-a-custom-domain-with-github-pages/) for more details and options.

**4. Verify your website / blog**

    Open your browser and enter your domain address. It should be working like charm!
    
These above are few simple steps and you can get free & secure website / blog.

I would recommend to go to Cloudflare settings for your site and make change to improve performance & security of your site.

Please feel free to write me, if you want any help setting up your site.