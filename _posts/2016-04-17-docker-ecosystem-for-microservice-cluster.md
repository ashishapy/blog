---
layout: post
disqus: true
cover: 'assets/images/self_healing_ms.jpg'
title: 'Docker Ecosystem for Microservices'
date: 2016-04-17 10:00:23
tags: Docker DevOps-Tools Microservices
subclass: 'post'
categories: 'ashishapy'
navigation: True
logo: 'assets/images/logofb.png'
---

In previous post [Docker with DevOps - One step towards Microservices]({% post_url 2016-03-26-docker-with-devops %}), we talked about Microservices and how Docker with fully automated DevOps workflow helped building a microservice. The talk included hands-on Docker basics and building Automated workflow (CI / CD).

In the quest to deploy **often and fast**, be **fully automatic**, accomplish **zero-downtime**, have the **ability to rollback**, provide constant **reliability** across environments, be able to **scale effortlessly**, and create **self-healing systems** able to recuperate from failures. We derive many strategies, architecture and tools.

By adopting culture of Automation / DevOps, we can deliver product / software very often and fully automatic way. But having zero-downtime was challenge. **Blue-Green deployment strategy** is the way to deploy new version of micro-service without any down time. Blue-Green deployment strategy also gives you ability to test the new version against real production traffic and if something goes wrong, you have previous version available and you can always switch back to previous stable version of micro-service.

With micro-services, you get hell lots of moving parts of application. Of-course Docker helps in creating standard package for micro-services, so that we can have standardise way to handle micro-services, irrespective of technology used to build micro-services.

Let’s call collection of all moving parts (containers) of application a **Cluster** . Creating / managing cluster needs some tooling to make our task easy. Before we go further let’s see **Self-Healing micro-services architecture** as below.

![Self-Healing Architecture](/assets/images/self_healing_ms.jpg)

As part of hands-on / demo, I created a GitHub repo [Demo-MicroServices](https://github.com/ashishapy/demo-microservices-v1). It has steps to create a cluster using **Consul** as service discovery, **Registrator** and **Docker Swarm** as cluster orchestrator. The repo has few steps, how to test if cluster is working as **single view**.

In the continuation of the same, We dig deeper in the recent meet-up event at Capita, Pune. Go thorugh slides, I hope you will find many intersting things to discover.

**Slides:**

<iframe src="//slides.com/ashishapy/docker-microservices/embed" width="576" height="420" scrolling="no" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

It goes in detail about Docker ecosystem for Microservices. If you have any question, shoot me either through my Twitter handle or email me. I will be more than happy to respond.