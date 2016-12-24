This is a fork of Etherpad with various customizations that we Beeminder people like.

* simpler URLs
* fewer formatting options
* monospace font
* maybe a better color picker

Links from the EtherpadLite project we forked this from:

* [HTTP API](https://github.com/ether/etherpad-lite/wiki/HTTP-API)
* [Client libraries for API](https://github.com/ether/etherpad-lite/wiki/HTTP-API-client-libraries)
* [jQuery plugin](https://github.com/ether/etherpad-lite-jquery-plugin) (helps embed pads in other websites)
* [FAQ](https://github.com/ether/etherpad-lite/wiki/FAQ)

# Installation

Etherpad works with node v0.10+ (except 6.0 and 6.1).

## GNU/Linux and other UNIX-like systems

You'll need gzip, git, curl, libssl develop libraries, python and gcc. And [node.js](http://nodejs.org).
- *For Debian/Ubuntu*: `apt-get install gzip git curl python libssl-dev pkg-config build-essential`  
- *For Fedora/CentOS*: `yum install gzip git curl python openssl-devel && yum groupinstall "Development Tools"`
- *For FreeBSD*: `portinstall node, npm, git (optional)`

**As any user (we recommend creating a separate user called etherpad):**

1. Move to a folder where you want to install Etherpad. Clone the git repository `git clone git://github.com/ether/etherpad-lite.git`
2. Change into the new directory containing the cloned source code `cd etherpad-lite`

Now, run `bin/run.sh` and open <http://127.0.0.1:9001> in your browser. 

Update to the latest version with `git pull origin`. The next start with bin/run.sh will update the dependencies.

# Next Steps

## Tweak the settings

You can initially modify the settings in `settings.json`. (If you need to handle multiple settings files, you can pass the path to a settings file to `bin/run.sh` using the `-s|--settings` option. This allows you to run multiple Etherpad instances from the same installation.)  Once you have access to your /admin section settings can be modified through the web browser.

You should use a dedicated database such as "mysql", if you are planning on using etherpad-in a production environment, since the "dirtyDB" database driver is only for testing and/or development purposes.

## Plugins and themes

Etherpad is very customizable through plugins. Instructions for installing themes and plugins can be found in [the plugin wiki article](https://github.com/ether/etherpad-lite/wiki/Available-Plugins).

## Helpful resources

The [wiki](https://github.com/ether/etherpad-lite/wiki) is your one-stop resource for Tutorials and How-to's.

Documentation can be found in `docs/`.

# Development

## Things you should know

Understand [git](https://training.github.com/) and watch this [video on getting started with Etherpad Development](http://youtu.be/67-Q26YH97E).

If you're new to node.js, start with Ryan Dahl's [Introduction to Node.js](http://youtu.be/jo_B4LTHi3I).

You can debug Etherpad using `bin/debugRun.sh`.

If you want to find out how Etherpad's `Easysync` works (the library that makes it really realtime), start with this [PDF](https://github.com/ether/etherpad-lite/raw/master/doc/easysync/easysync-full-description.pdf) (complex, but worth reading).

# License

[Apache License v2](http://www.apache.org/licenses/LICENSE-2.0.html)
