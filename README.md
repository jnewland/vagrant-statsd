Vagrant + Chef config for a local statsd development box.

# Installation

* [Install VirtualBox](http://vagrantup.com/docs/getting-started/index.html)
* Install deps

>    `bundle install --binstubs --path vendor/bundle`

* Bring up the virtual machine

>    `./bin/vagrant box add lucid64 http://files.vagrantup.com/lucid64.box`  
>    `./bin/vagrant up`

* [Voilà!](http://33.33.33.10/)

### Bonus features:

* <a href="http://33.33.33.10/render/?width=586&height=303&_salt=1313409654.75&target=drawAsInfinite(chef.run)&from=-1hours">Graphs chef runs as events</a>