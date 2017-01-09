test1209
This is a fork of Etherpad (as of 1.6.0) with various customizations that we Beeminder people like.

* simpler URLs
* fewer formatting options
* monospace font
* better color picker
* custom buttons

## Our label ontology for issue tracking

The following are descriptive labels and are colored black-on-light:

* BUG - opposite of feature
* REQ - feature request
* UVI - user-visible improvement candidate
* MEN - mendoza = need to resolve before deploying, part of MVP
* PEA - easy-peasy
* SKY - pie in the sky = would be awesome but not necessarily worth the effort

The following indicate an issue is resolved and are colored white-on-dark:

* ZAP - fixed
* NIX - won't fix
* ZZZ - postponed/snoozed
* CNR - could not reproduce
* DUP - duplicate
* FEA - opposite of bug, i.e., by design

This is modeled on
[Joel Spolsky's article on bug tracking](https://www.joelonsoftware.com/2000/11/08/painless-bug-tracking/)
which recommends that the fixer should mark an issue fixed/resolved and only the
person who actually opened the issue should close it.
(Maybe it's also fine for the person who opened it to notice when it's closed 
and either agree by labeling it ZAP or NIX or whatnot or else reopen it with a 
comment.)

Pro tip: See all issues that are closed but not fixed with with a filter like so: 
`is:issue is:closed -label:ZAP`

Other candidate labels: 

* CSS/style/polish, which could count as BUG or UVI
* User confusion, which could count as a BUG if severe enough
* Things needing triage, which could be indicated by lack of labels

## The three parts of a proper bug report

1. Steps to reproduce
2. What you expected to see
3. What you saw instead

## Links from the EtherpadLite project we forked this from

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

