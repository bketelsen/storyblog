---
title: Going Multicloud with Serverless  
date: "2019-10-17T19:00"
url: "slides/skillsmatter19/"
image: /images/Q6UehpkBSnQ.jpg
thumbnail: /images/Q6UehpkBSnQ-thumb.jpg
credit: "https://unsplash.com/photos/Q6UehpkBSnQ"
description: "Extend your serverless deployments with low-friction multi-cloud."
ratio: "16:9"
themes:
- apron
- descartes
- adirondack
classes:
- feature-math
- feature-qrcode
- feature-nohighlight
---

layout: true

.footer[
- @bketelsen
- brianketelsen.com
]
---
class: title, smokescreen, shelf, no-footer
background-image: url(/images/0nnuhlN0BSY.jpg)

# Going Multicloud with Serverless
## SkillsMatter October 2019

---

# About This Talk

- Slides are at https://brianketelsen.com/slides/
- Ask questions anytime
- Maybe I can answer them ¯\\_(ツ)_/¯
---

## About Me

- Microsoft Azure - Cloud Developer Advocate
- Twitter: @bketelsen
- Github: bketelsen

Interests:
- Go
- WebAssembly
- Svelte
- Pony, Nim, Zig 
- Distributed Computing
- BBQ + IoT 
---

class: img-right-full

# Roadmap

![Bit](/images/bit/bigbitread.png)


* Definitions
* Current State
* Multicloud
* Demo
* SDK
* CI/CD

---

class: img-right-full

# Roadmap


![Bit](/images/bit/bigbitread.png)


* Definitions <=


---

class: img-left-full

# Serverless


![Bit](/images/bit/bigbit.png)


* Term was coined ~2012
--

* Increasingly popular following the launch of AWS Lambda in 2014
--

* Function as a Service (FaaS) Model 
--

* Focus on Business Logic not Infrastructure

---

class: roomy

# Serverless Characteristics

--

* No OS-level concerns.  No Infrastructure Management
--

* Micro billing.  Consumption based, pay per use
--

* Instant scale

---

class: roomy

# Use Cases


* Single Page Applications
--

* APIs, Websockets
	* gRPC, HTTP2
--

* Light-weight event triggers/streams
--

* Data Processing
--

* 3rd Party Integration
--

* Edge Compute (IoT, Machine Learning)

---


class: img-right-full

# Roadmap


![Bit](/images/bit/bigbitread.png)


* Current State <=


---

class: img-right-full

# Serverless - The Good Parts


![Bit](/images/bit/bigbit.png)

--
* Focus on business problems
--

* Cost profile
--

* Little/no Infrastructure
--

* Reduced complexity/overhead
--

* Instant, on demand resources
--

* Faster iteration, increased velocity
--

* Promotes microservices, SOA-based architectures
--

* Scalable by design
---


class: img-right-full

# Serverless - The Not So Good Parts


![Bit](/images/bit/bigbitpicard.png)

--
* Performance
--

* Vendor lock-in
--

* Observability
--

* Security
--

* Language/runtime support varies
--

* Discoverability, coordination among teams
--

* Governance
--

* Still new, young technology

---
class: img-caption
# Multi-region Redundancy

![Multi-region](/images/multiregion.png)

---

class: img-right-full

# Roadmap


![Bit](/images/bit/bigbitread.png)


* Multicloud <=


---
class: img-caption
# Multi-cloud Redundancy

![Multi-cloud](/images/multicloud.png)


---

# Proposed Architecture

![Multi-cloud](/images/architecture.png# w-60pct db fr mr-4)


---

# Serverless Azure Plugin Features

--

* Dynamic ARM Templates
--

* Rollback
--

* Code Only Deployment
--

* API Management
--

* Offline
--

* KeyVault
--

* Non-HTTP Events
--

* Refactoring
--

* TypeScript

---

class: img-right-full

# Roadmap


![Bit](/images/bit/bigbitocto.png)


* Demo <=


---

class: img-right-full

# Roadmap


![Bit](/images/bit/bigbit.png)


* SDK <=


---

class: roomy, col-2

# Multicloud SDK

## Features

* OSS under Serverless (private, release soon) 
* Built with TypeScript 
* Deployed to NPM @multicloud
* Supports multiple cloud providers

---

class: roomy, col-2

# Multicloud SDK

## Goals

* Easy to Use
* Express-like design
* Extensible
* Minimal Refactoring

---


# Pipeline

![Multi-cloud](/images/mcpipeline.png# w-80pct db fr mr-4)


---