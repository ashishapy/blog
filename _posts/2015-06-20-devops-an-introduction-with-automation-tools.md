---
layout: post
disqus: true
cover: 'assets/images/cover9.jpg'
title: 'DevOps: An Introduction with Automation Tools'
date: '2015-06-20 15:03:00'
tags: DevOps Automation-Tools
subclass: 'post tag-test tag-content'
categories: 'ashishapy'
navigation: True
logo: 'assets/images/logofh.png'
---

I have been hearing about DevOps a lot and I thought to check it out, what is this new bird. I am tempted to try out at least one tool in each of its categories. If you like it, do leave your comment. 

==If you are interested only in list of DevOps Tools then jump to <a href="#automate">Step 2: Automate</a> of the post.==

First question was in my mind. **What is DevOps?**

DevOps (Development and Operations) is software development method, an improvement upon Agile and Lean.

Ok, we know the definition now. **Why do we bother to learn another software development method?**

It's just a name 'DevOps'. If you already have 

* Great culture (transparency, collaboration, shared responsibilities and  free flow of knowledge) with in team and across teams.
* Most of the task are automated
* Great Monitoring to give instant feedback
* Instant delivery of production ready softwares / Fast IT.
* Incremental value addition to business

Then you are already on DevOps and please educate others to be awesome, as you are.

Hummm... **I am not on DevOps.**
Okay, let's make transition to DevOps. 
I must warn you!!! Once you make transition to DevOps then there is no turning back. It's like full HD TV, once you experienced it, you never wanna go back to standard TV :) .

Transition to DevOps is **simple two step process**.

Step 1: Re-org with cultural changes
Step 2: Automate

Thank you!!!

Still reading? DevOps must has got your attention ;) 
Ok, ok, without wasting any more time, we jump to two step process.

Step 1: **Re-org with cultural changes**
DevOps is not about hiring new people but it is re-org of your existing team with cultural changes.

You might have organisation structure as below, divided by their roles and skills.

![Typical organisation structure](//cdn.ashishapy.com/2015/Jun/1do-1434693207495.jpg)

* Re-org to have every stakeholder a common Goal, shared vision. Get a clear vision and have team around services. You maintain services over decades, not a project. Ultimately goal of project is also a service. 


![team around services](//cdn.ashishapy.com/2015/Jun/2do-1434695018246.jpg)

Address wastes & objections within team and encourage to have a shared vision.

* Eliminate wastes like knowledge waste, waiting waste, waste in motion and inventory waste.

* Address objections like security, compliance, offshore team, legacy and skills.

* Bring transparency within the team and let free flow of knowledge at every level.

**What about automation?** do automation will help in building a DevOps team & cultural changes?

==<span id="automate">Step 2: **Automate**</span>==

Yes, tools are integral part of DevOps. Tools help to automate things and bring DevOps culture in the team.

**Categories of DevOps tool**
![Categories of DevOps](//cdn.ashishapy.com/2015/Jun/3do1-1434742664868.jpg)

List of useful tools for each categories:

**1. Collaboration:**  

Tools:  

* [Skype](http://www.skype.com)
* [Slack](https://slack.com)
* [Github Wiki](https://github.com)
* Blogs

Benefits:

* To easily connect with across teams.
* Helps in rapid discussion to make decision fast.
* Pass knowledge across team.
* Helps to avoid knowledge waste.
* Acts as knowledge repository. 
* Quick collaboration.

**2. Planning:**  

Tools:

* [Trello](http://trello.com)
* [Visual Studio Online](http://visualstudio.com)

Benefits:

* Collective team planning.
* Bring transparency.
* Bring everybody online onboard.
* Visibility to everybody, what others are working on. Who to contact when needed & who are responsible for what.
* Define priorities in real time.

**3. Issue Tracking:**  

Tools:

* [Zendesk](http://www.zendesk.com)
* [Jira](https://www.atlassian.com/software/jira)

Benefits:

* Know how I am doing to collect triage and response as collective team. 
* Not to do transportation waste as with multiple tracking system. 
* Eliminate transportation waste, knowledge waste as information continues to degrade as information travels through systems.
* Have a shared view, everybody is looking at same place and solving problem (not passing around).

**4. Monitoring:**  

Tools:

* [Logstash](http://logstash.net)
* [Microsoft System Center](http://www.microsoft.com/sam/en/us/systemcenter.aspx)
* [Kibana](http://rashidkpc.github.io/Kibana)
* [New Relic](http://newrelic.com)
* [Nagios](https://www.nagios.org/)
* [Sensu](https://sensuapp.org/)
* [Zabbix](http://www.zabbix.com/)

Benefits:

* Health Check of systems.
* System Alerts.
* Helps in maintenance & deployment.
* Helps in designing systems and future improvements.
* To know when is the right time to bring in right person to troubleshoot the problem.
* Collecting, parsing and analysing system logs.

**5. Configuration Management:**

Tools:

* [Chef](http://www.getchef.com)
* [SaltStack](http://www.saltstack.com)
* [Puppet](http://puppetlabs.com)
* [Ansible](http://www.ansible.com)
* [Powershell DSC](http://technet.microsoft.com/en-us/library/dn249912.aspx)

Benefits:

* Keep configuration stable and consistent, when moves from one server to another.
* Infrastructure management as code.
* Changes to one server applied to all server automatically.

**6. Source Control:**  

Tools:

* [Github](https://github.com)
* [Bitbucket](https://bitbucket.org/)
* [Subversion](https://subversion.apache.org/)
* [Stash](https://www.atlassian.com/software/stash)

Benefits:

* Closely guard your software assets.
* Track changes with audit control.
* Store configuration along with code. Infrastructure as code.
* More control over changes in as infrastructure.
* Easy to troubleshoot issue when something go wrong.
 
**7. Development Environment:**

Tools:

* [Codenvy](https://codenvy.com)
* [Vagrant](http://www.vagrantup.com)

Benefits:

* Making sure all developers have access to same setup / configuration.
* Eliminate differences between production environment and development environment.
* Browser / cloud based IDE, see real time code change by others.

**8. Continous Integration:**

Tools:

* [Teamcity](http://www.jetbrains.com/teamcity)
* [Jenkins](http://jenkins-ci.org)
* [Travis CI](https://travis-ci.com)
* [Bamboo](https://www.atlassian.com/software/bamboo)
* [CruiseControl](http://cruisecontrol.sourceforge.net/)

Benefits:

* Continuous and very frequent code merge in shared / main repository.
* Changed code gets tested by automated build tools against all integrated systems.
* Detect problem as early as possible.

**9. Deployment:**  

Tools:

* [Cloudformation](http://aws.amazon.com/cloudformation)
* [Packer](http://www.packer.io)
* [Docker](http://www.docker.com)
* [Octopus](http://octopusdeploy.com)
* [Go](http://www.go.cd)
* [Capistrano](http://capistranorb.com/)

Benefits:

* Making sure continuous deployment is reliable and less scary.
* Have whole build pipeline and configuration goes to production as a single package.
* Easily autoscale same setup many fold.
* Encourages great cooperation between Developer and Operation.
* You might never update an server but replace it with updated / new code & configuration.

Definitely some of tools listed above serve purpose of more than one category. So use your own analysis before choosing a suitable tool for you.

Automation tools help to get code changes from Dev to Prod within few mins. This is the power of DevOps automation.

DevOps is about continuous improvement, so does this post.

Hope you like it, please do leave comments here or discuss over Twitter.