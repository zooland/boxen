# == Description
#
# Sublime Text 2 settings specific for Kevin Lovekand (aka "zoobert").
#
class people::zoobert::sublime_text {

  include 'sublime_text'

  $home = "/Users/${::boxen_user}"

  file { "${home}/Library/Application Support/Sublime Text 3/Packages/User":
    ensure => 'directory',
    owner  => $::boxen_user,
    mode   => '0755',
  }
  ->
  file { "${home}/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings":
    source  => 'puppet:///modules/people/zoobert/sublime-settings',
  }

}
