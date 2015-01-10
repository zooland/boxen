# == Description
#
# Applications specific for the 'developer' project.
#
class projects::developer::applications {

  include 'chrome'
  include 'firefox'
  include 'intellij'
  include 'iterm2::stable'
  # include 'p4merge'
  # include 'packages::git_process'
  # include 'packages::gjslint'
  # include 'packages::jq'
  include 'packages::oracle_client'
  include 'packages::sourcetree_cli'
  include 'packages::sublime_text_cli'
  include 'packages::sublime_text_package_management'
  include 'packages::tree'
  include 'sourcetree'
  include 'sublime_text'
  include 'vagrant'
#  include 'virtualbox'
  include 'wget'

}
