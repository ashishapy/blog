---
layout: post
disqus: true
cover: 'assets/images/self-tool.jpg'
title: 'Self-Healing Systems using Docker'
date: 2016-09-18 06:00:00
tags: Docker Self-Healing Microservices
subclass: 'post'
categories: 'ashishapy'
navigation: True
logo: 'assets/images/logofh.png'
---

Imagine world where IT / Software systems do not require manual intervention to manage itself. Systems are self-sufficient. In case of disaster, systems are able to recover itself & resume services. Systems are able to detect what is not working, then *self-heal / auto-heal / restore* itself to **designed state**.

If some part of system can't be auto repaired then system should also be able to detect it, work as a **circuit breaker** to isolate defective part of the system. Also make sure that rest of the system don't get impacted and operate as normal.

Self-Healing Microservices Systems are a big step towards building such systems.

*There are three levels of self-healing systems.*

1. **Application Level:**

    We capture problem either through exception or through logs. It is upto developers of each service to design in such a way that it can heal itself or recover from failure. Implementation of DevOps practices or Continuous Deployment process would be great help in the direction.

2. **System Level:**

    Systems are monitored through aspect of process failure and response time. If process fails, we need to restart the service or redeploy the service. If response time is not acceptable then we need to scale / descale the service.

3. **Hardware Level:**

    Hard truth, we can't self-heal hardware in case of hardware failure. We can redeploy the services to a healthy hardware / node. Or we keep monitoring the hardware and take preventive measure to scale hardware / infrastructure.

> Microservices architecture, Container technologies and modern cloud (public/private) infrastructure are making possible to create Self-Healing systems.

Here is the slides & YouTube video from my recent talk on [Self-Healing Microservices using Docker](http://www.meetup.com/WebApp-Pune/events/233785424/) (1.12.x) with [WebApp-Pune meetup](http://www.meetup.com/WebApp-Pune/).

**Slides:**

<iframe src="//slides.com/ashishapy/self-healing-systems/embed" width="576" height="420" scrolling="no" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

**Youtube:**

If you just want to see Self-Healing demo and don't have enough patient to watch full meetup event video. then jump to 1hr 26mins time or follow this YouTube link **[Self-healing Demo](https://youtu.be/eV3Ltw1qjNo?t=1h26m)**.

The full video:

<iframe width="560" height="315" src="https://www.youtube.com/embed/eV3Ltw1qjNo" frameborder="0" allowfullscreen></iframe>


It covers a lot of details including The 12 Factor Apps, Self-Healing, Docker, Microservices and Demo of Self-Healing Systems using Docker swarm mode.

Let me know your feedback or any question you have. Use comment section below or Twitter [@ashishapy](https://twitter.com/ashishapy).