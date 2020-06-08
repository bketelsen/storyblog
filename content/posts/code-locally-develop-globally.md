---
title: 'Code Locally, Develop Globally'
author: Brian Ketelsen
date: 2019-05-21T19:31:00.000Z
draft: true
description: >-
  After a few weeks with the VS Code Remote/SSH plugin, I have some fun tricks
  to make your cloud development smooth and silky.
image: /images/cloud.png
url: code-locally-develop-globally
---
### Changing the Definition of Portable

This post gives you a recipe for an advanced setup that allows you to "code in the cloud" but retain almost all of the benefits of local development.

<!--more-->

### Ingredients

To bake this cake you will need the following items:

* A virtual machine hosted somewhere with a public IP address
* A domain name with available subdomains 
* Access to DNS records for this domain
* Visual Studio Code Insiders
* Remote - SSH plugin for VS Code

#### Provision and Configure Virtual Machine

Provision and start your virtual machine.  Record the public IP address somewhere.  If your cloud host has firewall rules, allow ports 22 and 443 to start.  We'll probably add more later depending on your development tools.  Make sure to configure your SSH keys for automatic login.  This is a critical part of the workflow!

#### DNS Configuration

Open the DNS configuration for your chosen domain name and add `A records` that match the following:

```
  1234.your.com   1.2.3.4
  3000.your.com   1.2.3.4
  4000.your.com   1.2.3.4
  5000.your.com   1.2.3.4
  8000.your.com   1.2.3.4
  8001.your.com   1.2.3.4
  8080.your.com   1.2.3.4
  8081.your.com   1.2.3.4
  9000.your.com   1.2.3.4
```

Substitute `your.com` with the domain name you will use when you're developing.  PROTIP: Pick a short one

Substitute `1.2.3.4` with the public IP address of your virtual machine.

Go grab your favorite beverage and wait before continuing.  DNS needs to be active for the next steps to work.  If the rest of the internet can't resolve these hosts, the next step will fail.

#### Install Caddy Server

Head over to [Caddy's Website](https://caddyserver.com/download) and grab the download link
