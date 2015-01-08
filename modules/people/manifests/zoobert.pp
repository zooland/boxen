# == Description
#
# Machine configuration specific for Jim Moore (aka "zoobert").
#
class people::zoobert {

  include people::zoobert::dotfiles
  include people::zoobert::bin
  include people::zoobert::applications
  include people::zoobert::ruby
  include people::zoobert::git
  include people::zoobert::sublime_text
  include people::zoobert::osx

}
