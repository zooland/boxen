# == Description
#
# Adds a link to invoke Sublime Text 3 from the command line: `subl`
#
class packages::sublime_text_cli {

  include sublime_text

  file { '/usr/bin/subl':
    ensure  => 'link',
    target  => '/Applications/Sublime Text 3.app/Contents/SharedSupport/bin/subl',
    require => Class['sublime_text']
  }

}
