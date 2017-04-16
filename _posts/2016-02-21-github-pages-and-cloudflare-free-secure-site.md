---
layout: post
disqus: true
cover: 'assets/images/cover8.jpg'
title:  "1/2 Free and secure static website or blog"
date:   2016-02-21 10:00:23
tags: Github-Pages Website
subclass: 'post tag-test tag-content'
categories: 'ashishapy'
navigation: True
logo: 'assets/images/logofh.png'
---

If you are individual / small company and want to host your own website / blog. But you don't want hassle to 
maintain your hosting site and looking for some simple & easy way to start. Then Github pages is the one you much check.

GitHub Pages, hosted directly from your GitHub repository. Just edit, push, and your website / blog is live. GitHub Pages are powered by [Jekyll](http://jekyllrb.com/).
[Octopress](http://octopress.org/) is also another way to Jekyll based framework for same purpose.

[Cloudflare](https://www.cloudflare.com) gives security to your website / blog including SSL certificates.

Though I like [Ghost](https://github.com/TryGhost/Ghost). You should also check, if you are trying to start a blogging business.

**Synopsis:**

**Part 1:**

1. Setup GitHub Page on your GitHub repo
2. Setup Jekyll on your local
3. Setup a Jekyll theme
4. Push local changes to GitHub repo & Test

-----

Wohoo! Let's start. There are few simple steps to get your website / blog ready.

1. Signup on [GitHub](https://github.com/)
2. [Create a repository](https://github.com/new): 
Create a new repository named _```username.github.io```_, <font color="blue">where <strong>'username'</strong> is your username (or organisation name) on GitHub.</font>

3. Install Jekyll on your local machine ```gem install jekyll```.
4. Choose a Jekyll theme and download, unzip it on your local (I choose a blog theme 
[Jekyll Uno](http://jekyllthemes.org/themes/jekyll-uno/))
5. Go to folder and follow instruction to install dependencies.
    
    <code>$ cd jekyll-uno/</code> <br>
    <code>$ gem install bundler</code>  <br>
    <code>$ bundle install</code> <br>

6. Open "_config.yml" file in any text editor and make changes for your own website. e.g. You should change below things to personalise it at-least

    <pre>
    title: 'Your Blog title'
    description: 'Blog description'
    url: 'blog url'
    baseurl: '/'

    author:
      name: 'Your name'
      email: your email id
      twitter_username: username
      github_username:  username
    </pre>
    
7. Run local server ```$ bundle exec jekyll serve```. Go to 'http://localhost:4000/' and 
see your changes on browser.

8. Check sample post under '_post' directory. You must use File naming format. 
Check [Jekyll Doc](http://jekyllrb.com/docs/home/) to build & customise your blog / website.

9. Now it's time to push your blog to github.

    <code>$ git init</code> <br>
    <code>$ git add -A</code> <br>
    <code>$ git commit -m "first commit"</code> <br>
    <code>$ git remote add origin git@github.com:username/username.github.io.git</code> <br>
    Use your github repo here. <br>
    <code>$ git push -u origin master</code>
    
10. Let's test, go to 'http://username.github.io' on browser. Yeeeee! That's our first free blog 
serving over Github Pages.

This is the point where you choose either you want your own custom domain name or 'username.github.io' url works for you.
There are way to enable https:// on your 'username.github.io' page. Check Eric Mill post [here](https://konklone.com/post/github-pages-now-sorta-supports-https-so-use-it).

In the **[next post]({% post_url 2016-03-20-custom-domain-githubpage-cloudflare %})** we will go through how to setup custom domain on github pages and DNS setting, security on Cloudflare.

<br>