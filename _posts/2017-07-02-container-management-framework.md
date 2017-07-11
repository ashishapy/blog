---
layout: post
disqus: true
cover: 'assets/images/container-management.jpg'
title: 'Container (Docker) Management Framework - An Introduction'
date: 2017-07-02 06:00:00
tags: Docker Container-Management CaaS
subclass: 'post'
categories: 'ashishapy'
navigation: True
logo: 'assets/images/logofh.png'
---

In case you haven't noticed, we are on rapid march towards realising full capacity of cloud infrastructure & it's services. Having multi cloud, hybrid infrastructure & avoid vendor locking is the dream! 

Building & running your apps in container on cloud is major step towards the dream. Few months back I wrote, presented & talked on [Docker with DevOps - One step towards Microservices](//blog.ashishapy.com/2016/03/docker-with-devops/), [Docker Ecosystem for Microservices](//blog.ashishapy.com/2016/04/docker-ecosystem-for-microservice-cluster/) & [Self-Healing Systems using Docker](//blog.ashishapy.com/2016/09/self-healing-system-using-docker/).

*Containers (aka Docker)* comes with some benefits & complexities. Your apps in container without *container management framework*, are like your luxury car without wheels & steering.

This post is series of questions & answers, I ask myself & answer myself. 
Weirdo!

Let's start . . .

### What is Container Management Framework?

A container management framework is a solution used to build, ship & deploy your app in containers. Docker, as a container has become a standard.

Container Management Framework helps you to build **_CaaS (Container as a Service)_** solution.

> **Containers as a Service (CaaS)** is a model where IT organisations and developers can work together to build, ship and run their applications anywhere. CaaS enables an IT secured and managed application environment consisting of content and infrastructure, from which developers are able build and deploy applications in a self service manner.
- [Docker](https://blog.docker.com/2016/02/containers-as-a-service-caas/)

### Are they different from Container Orchestrator tool?

Yes...
Orchestration is just a piece of the puzzle, but choice of the orchestration layer often drives the 'Container Management Framework' selection decision.

Some popular container orchestration tools are as following.

1. [Docker Swarm](https://docs.docker.com/engine/swarm/)
2. [Kubernetes](https://kubernetes.io/)
3. [Apache Mesos](http://mesos.apache.org/)

Don't be blinded by orchestration capabilities. Focus on governance, security and policy enforcement; this will be the most important factor for production workloads.

> Orchestration tools are very much IT operation (ITOps) focused & don't solve full life-cycle of application (Dev).

Container Management Framework goes beyond the orchestration & will not only integrate the various management elements to form a whole, but also ensure that the management elements are compatible with each other.

### Good! Can you name some of Container Management Framework?

Sure, followings are some popular container management frameworks.

- [Docker Enterprise](https://www.docker.com/enterprise-edition)
- [RedHat OpenShift](https://www.openshift.com/)
- [Mesosphere Enterprise DC/OS](https://mesosphere.com/product/)
- [CoreOS Tectonic](https://coreos.com/tectonic/)
- [Rancher](http://rancher.com/)
- [Apcera](https://www.apcera.com/)
- [Apprenda](https://apprenda.com/) 

From popular cloud providers:

- [Amazon ECS](https://aws.amazon.com/ecs/)
- [Google GKE](https://cloud.google.com/container-engine/)
- [Microsoft ACS](https://azure.microsoft.com/en-in/services/container-service/)

### Ok, what does container management framework bring on table?

**1) Scheduling of containers:**

  `Placement, replication, scaling, rescheduling, upgrades, rollback of containers.`

**2) Computing resource management:**

  `Memory, cpu, volume, port, ip, image, network of containers.`

**3) Management of services:**

  `Service discovery & orchestrating multiple containers together (using label, group, namespace, load balancing, readiness checking, health checking).`

**4) Governance:**

  `Access control, isolation, resource utilisation, limits & quotas, network segmentation & encryption.`

All above capabilities are usually solved by **orchestration tools**. There are more container management framework, can do for us.

### Okey! what else can container management framework do for us?

They should provide seamless integration with -

**5) Image registry:**

  `A place where you can store & distribute container (Docker) images.`

Tools:

  - [Docker Trusted Registry](https://docs.docker.com/datacenter/dtr/2.2/guides/)
  - [Quay](https://quay.io/)
  - [Artifactory](https://www.jfrog.com/article/docker-registry/)
  - [Nexus](https://www.sonatype.com/docker)

  - [Docker Hub](https://hub.docker.com/)
  - [AWS ECR](https://aws.amazon.com/ecr/)
  - [Google Container Registry](https://cloud.google.com/container-registry/)
  - [Azure Container Registry](https://azure.microsoft.com/en-in/services/container-registry/)

**6) Source Control Management:**

  `A version control system, where your code, configs & documents are being stored.`

Tools:

  - [Github](https://enterprise.github.com/home)
  - [Bitbucket](https://bitbucket.org/product)
  - [GitLab](https://about.gitlab.com/products/)
  - [SVN](https://www.collab.net/downloads/subversion)

**7) Persistant Storage:**

  `Place to store all your app data. A software-defined storage (SDS)`

Tools:

  - Object Storage

    - [AWS S3](https://aws.amazon.com/s3/)
    - [Openstack Swift](https://docs.openstack.org/developer/swift/)
    - [Google Unified Object Storage](https://cloud.google.com/storage/)

  - Block Storage

    - [AWS EBS](https://aws.amazon.com/ebs/)
    - [Openstack Cinder](https://docs.openstack.org/kilo/config-reference/content/section_block-storage-overview.html)
    - [GCE Persistent Disk](https://cloud.google.com/compute/docs/disks/)

Data is mission critical & storage technologies in container world, to support stateful services, are yet to be matured. 

You may want to continue with your traditional storage solution until world settles for stateful containers.

**8) Security solutions:**

  `Enforce security policies, manage secrets, security scanning, image signing.`

Tools:

  - [Docker Content Trust](https://docs.docker.com/engine/security/trust/content_trust/)
  - [Aqua](https://www.aquasec.com/)
  - [Twistlock](https://www.twistlock.com/)
  - [Weaveworks](https://www.weave.works/)

  - [JFrog Xray](https://www.jfrog.com/confluence/display/XRAY)

  - [Vault](https://www.vaultproject.io/)

**9) Load balancer:**

  `To manage & distribute your external traffic.`

Tools:

  - [Ngnix](https://www.nginx.com/resources/admin-guide/load-balancer/)
  - [HAProxy](http://www.haproxy.org/)
  - [AVI Networks](https://avinetworks.com/)
  - [Incapsula](https://www.incapsula.com/load-balancer.html)
  - [Citrix Netscaler](https://www.citrix.com/products/netscaler-adc/)
  - [Dyn](http://dyn.com/)

  - [AWS ELB](https://aws.amazon.com/elasticloadbalancing/)

**10) Monitoring:**

  `Log management, Metrics collection, time-series monitoring, analytics & visualisation & alerting`

Tools:

  - [Splunk](https://www.splunk.com/)
  - [Elastic Stack](https://www.elastic.co/products)
  - [Sysdig](https://www.sysdig.org/)
  - [Prometheus](https://prometheus.io/)
  - Others ([cAdvisor](https://github.com/google/cadvisor), [Fluentd](http://www.fluentd.org/), [Heapster](https://github.com/kubernetes/heapster), [Grafana](https://grafana.com/) etc.)

**11) Authentication & authorisation:**

  `Policy compliance, role based access control (RBAC), app to app communication`

Tools:

  - [Lightweight Directory Access Protocol (LDAP)](https://www.ldap.com/choosing-an-ldap-server)
  - [Service Accounts]()
  - [MS Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/)
  - [AWS IAM](https://aws.amazon.com/iam/)

**12) Continuous Integration:**

  `Developers to integrate code into a shared repository & verified by an automated build, allowing teams to detect problems early`

Tools:

  - [Jenkins](https://jenkins.io/)
  - [Bamboo](https://www.atlassian.com/software/bamboo)
  - [CircleCI](https://circleci.com/)
  - [Travis CI](https://travis-ci.org/)
  - [CruiseControl](http://cruisecontrol.sourceforge.net/)
  - [TeamCity](http://www.jetbrains.com/teamcity/)

**13) Continuous Delivery:**
  
  `Release into production of application that passes the automated tests, after necessary approvals`

Tools:

  - [Chef](https://www.chef.io/chef/) / [Puppet](https://puppet.com/) / [Ansible](https://www.ansible.com/)
  - [Terraform](https://www.terraform.io/) & [Packer](https://www.packer.io/)
  - [CFEngine](https://cfengine.com/)
  - [SaltStack](https://saltstack.com/)
  - [IBM UrbanCode Deploy](https://developer.ibm.com/urbancode/products/urbancode-deploy/)

**14) Collaboration:**

  `Brings all the pieces (system alerts, notification etc.) and people/teams you need together. Enables ChatOps.`

Tools:

  - [Slack](https://slack.com/)
  - [HipChat](https://www.hipchat.com/)
  - [Yammer](https://products.office.com/en-in/yammer/yammer-overview)
  - [Gitter](https://gitter.im/)

### Hummm... anything else they should be integrated with... 

Probably also with -

**15) Cloud provider services**

**16) Billing system**

**17) Auditing system**

Phew! That's exhaustive list!

### Anything container management framework can't do or will not do?

Yes ...

- **Infrastructure Management:**

  `Infrastructure (computing, network & storage) provisioning, scaling up / down, upgrading / rollback / security fixes.`

- **Manage itself** (Container Management Framework):

  `Install / bootstrap, upgrade / rollback / security fixes, disaster recovery of container management framework itself.`

### WHAAAT !!? Then... how am I gonna get those things done?

That is out of scope of container management. You should have cloud infrastructure.

Use infrastructure provisioning tool to provision your infrastructure & use some configuration management tool to setup your container management framework.

Don't forget to have disaster recovery plan in place.

### Can you give your recommendations on container management frameworks?

Recommendations!? No! I can't & I should not. one size doesn't fit all. 

But I can suggest you how to reach on your decision to choose one.

- First choose a cloud provider (public / private).

- Decide on what cloud services you are gonna use to build infrastructure (VMs / bare metal).

- Make a checklist (based on your need) as listed above in this post & see which Container Management Framework best suited to you.

- Choose tools which will help you to create infrastructure, deploy container management framework & upgrade / patch it.

- Don't forget to adopt DevOps tools & principles for your apps. Check [DevOps - An Introduction](//blog.ashishapy.com/2015/06/devops-an-introduction-with-automation-tools/).

I would love to listen your feedback.
