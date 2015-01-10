# == Description
#
# Applications specific for Kevin Loveland (aka "zoobert")
# that should be on all his machines.
#
class people::zoobert::applications::general {

  include 'caffeine'
  include 'chrome'
  include 'cyberduck'
# include 'docker'
  include 'dropbox'
  include 'firefox'
  include 'git'
  include 'heroku'
  include 'intellij'
#  include 'oh-my-zsh'
  include 'packages::jenv'
  include 'skype'
  include 'sourcetree'
  include 'spotify'
  include 'sublime_text'
  include 'tmux'
  include 'vagrant'
#  include 'virtualbox'
  include 'zsh'

  # Window mover, resizer and more
  # http://www.binarybakery.com/product.php?app=windownaut
  # package { 'Windownaut':
  #   source   => 'http://macapps.mooregreatsoftware.com.s3.amazonaws.com/Windownaut-1.2.6.dmg',
  #   provider => appdmg,
  # }

  # include 'iterm2::colors::solarized_dark'

}
