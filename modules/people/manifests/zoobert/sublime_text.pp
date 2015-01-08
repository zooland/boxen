# == Description
#
# Sublime Text 2 settings specific for Jim Moore (aka "zoobert").
#
class people::zoobert::sublime_text_2 {

  include 'sublime_text_2'

  $home = "/Users/${::boxen_user}"

  file { "${home}/Library/Application Support/Sublime Text 2/Packages/User":
    ensure => 'directory',
    owner  => $::boxen_user,
    mode   => '0755',
  }
  ->
  file { "${home}/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings":
    source  => 'puppet:///modules/people/zoobert/sublime-settings',
  }

}
