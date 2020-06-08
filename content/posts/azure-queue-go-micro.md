+++
author = "Brian Ketelsen"
categories = ["azure", "queue", "micro", "go", "broker"]
date = 2017-10-02T21:09:08Z
description = ""
draft = true
url = "/azure-queue-go-micro"
tags = ["azure", "queue", "micro", "go", "broker"]
title = "Bringing Azure Queue Services to Micro"

+++

My favorite microservices framework is [micro](https://micro.mu).  It has a well-designed plugin system that allows devlopers to choose different backend services for things like network transport and message brokers.  Micro doesn't support Azure's queue service, so I decided it was time to introduce my two friends.

<!--more-->

The first thing I did was download the [Azure Storage Emulator](https://docs.microsoft.com/en-us/azure/storage/common/storage-use-emulator) which allows me to develop locally against an emulated Azure queue.  The queue emulation uses the same API as the production service, but locally addressed endpoints instead of Azure endpoints.  Perfect!

When I started the emulator, it prompted me for a SQL Server database for storage.  DRAT.  Fortunately, SQL Server Express is a quick and painless install.  After getting both of those installations out of the way I was ready to connect to the Azure Storage Emulator.

```
AzureStorageEmulator.exe init
... output here ...
AzureStorageEmulator.exe start
```
