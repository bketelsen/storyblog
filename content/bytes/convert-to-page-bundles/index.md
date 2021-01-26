---
title: Convert to Page Bundles
date:  "2021-01-26"
description: "A quick bash script to convert a folder of .md files to directories"
link: 'https://gohugo.io/content-management/page-bundles/' 
tags:
- hugo
categories:
- Development
---

I needed a quick script to convert a directory full of posts into Hugo's `page bundle` format.  
<!--more-->

Old:

```
blog\
    mypost.md
```

New:

```
blog\
    mypost\
        index.md
```

Run this script in your `content\blog` folder:

```bash
#!/bin/bash

for filename in *.md; do
    [ -e "$filename" ] || continue
    echo Processing "$filename"
    echo creating directory $(basename "$filename" .md)
    directory=$(basename "$filename" .md)
    mkdir -p $directory
    mv $filename ${directory}/index.md
done
```

I put mine in a `/bin/` directory in the blog repo, and added that directory to my `$PATH` using `direnv`.