# == Description
#
# Git settings anspecific for Kevin Loveland (aka "zoobert")
# that should be on all his machines.
#
class people::zoobert::git::global {

  git::config::global {
    'user.name':     value  => 'Kevin Loveland';
    'push.default':  value  => 'simple';
    'core.autocrlf': value  => 'input';
    'core.safecrlf': value  => 'warn';
    'core.editor':   value  => 'subl -w';
  }

}
