This is a fork of Etherpad 1.6.0 with various customizations that we Beeminder people like.

* simpler URLs
* fewer formatting options
* monospace font
* better color picker
* custom buttons

## Our label ontology for issue tracking

* BUG - self-explanatory
* CNR - could not reproduce
* DUP - duplicate
* FEA - feature, as in not-a-bug
* REQ - feature request
* MEN - mendoza = need to solve it before deploying
* NIX - won't fix
* PEA - easy-peasy
* SKY - pie in the sky = would be awesome but not necessarily worth the effort unless it's easier than we think
* UVI - user-visible improvement
* ZZZ - postponed/snoozed
* ZAP - fixed/resolved 

You could also just close an issue instead of labeling it ZAP'd but Joel Spolsky says that the fixer should mark it fixed and only the person who actually opened the issue should close it.

## Links from the EtherpadLite project we forked this from:

* [HTTP API](https://github.com/ether/etherpad-lite/wiki/HTTP-API)
* [Client libraries for API](https://github.com/ether/etherpad-lite/wiki/HTTP-API-client-libraries)
* [jQuery plugin](https://github.com/ether/etherpad-lite-jquery-plugin) (helps embed pads in other websites)
* [Wiki](https://github.com/ether/etherpad-lite/wiki) (Tutorials and How-to's)
* [FAQ](https://github.com/ether/etherpad-lite/wiki/FAQ)
* [Video on getting started with Etherpad Development](http://youtu.be/67-Q26YH97E)
* [Etherpad's `Easysync` library](https://github.com/ether/etherpad-lite/raw/master/doc/easysync/easysync-full-description.pdf)
* [Installing themes and plugins](https://github.com/ether/etherpad-lite/wiki/Available-Plugins)
* Documentation is in `docs/`.
* Debug Etherpad with `bin/debugRun.sh`.
* License: [Apache License v2](http://www.apache.org/licenses/LICENSE-2.0.html)

## Installation (Unix)

Etherpad works with node v0.10+ (except 6.0 and 6.1).

You'll need gzip, git, curl, libssl develop libraries, python and gcc. And [node.js](http://nodejs.org).
- *For Debian/Ubuntu*: `apt-get install gzip git curl python libssl-dev pkg-config build-essential`  
- *For Fedora/CentOS*: `yum install gzip git curl python openssl-devel && yum groupinstall "Development Tools"`
- *For FreeBSD*: `portinstall node, npm, git (optional)`

**As any user (we recommend creating a separate user called etherpad):**

1. Move to a folder where you want to install Etherpad. 
Clone the git repository `git clone git://github.com/ether/etherpad-lite.git`
2. Change into the new directory containing the cloned source code `cd etherpad-lite`

Now run `bin/run.sh` and open <http://127.0.0.1:9001> in your browser.

Update to the latest version with `git pull origin`. The next start with bin/run.sh will update the dependencies.

## Tweaking settings

You can initially modify the settings in `settings.json`. 
(If you need to handle multiple settings files, you can pass the path to a settings file to `bin/run.sh` using the `-s|--settings` option. This allows you to run multiple Etherpad instances from the same installation.)
Once you have access to your /admin section then settings can be modified through the web browser.

