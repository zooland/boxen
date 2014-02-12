# == Description
#
# Sublime Text 2 settings specific for Jim Moore (aka "jdigger").
#
class people::jdigger::sublime_text_2 {

  $home = "/Users/${::boxen_user}"

  file { "${home}/Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings":
    source  => 'puppet:///modules/people/jdigger/sublime-settings',
  }

}
