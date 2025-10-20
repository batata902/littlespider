# LittleSpider ![](https://i.ibb.co/rRj4n1Sg/spider.png)


A simple spider made with a Bash script. It can be used to get some URLs from a web page. LittleSpider can also perform a DNS lookup to get the IP address behind the domain name. Additionally, it detects if the domain is an alias for another name.

Screenshot
----

![Screenshot](https://raw.githubusercontent.com/batata902/littlespider/refs/heads/main/screenshot.png)

LittleSpider execution.

Installation
----

You can download LittleSpider just cloning this github repository:

    git clone https://github.com/batata902/littlespider.git

LittleSpider works with bash

Usage
----

This is a simple script, so the only way to use it is by providing the domain you want to crawl:

    bash littlespider.sh domain.com

If you give the proper permissions, you can run it with:

    ./littlespider.sh domain.com

Thanks to Messias Eric for the knowledge necessary for this simple project.
