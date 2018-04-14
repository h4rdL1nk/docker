
##Fluentd install (https://docs.fluentd.org/v1.0/articles/install-by-gem)

```
$ sudo pacman -S ruby

$ gem install fluentd --no-ri --no-rdoc

$ vi .bashrc
...
PATH=$PATH:~/.gem/ruby/2.5.0/bin
...

$ source .bashrc

$ fluent-gem install fluent-plugin-elasticsearch

$ fluentd --setup ~/fluent

$ fluentd -c ~/fluent/fluent.conf
```
