# == Description
#
# Machine configuration for pretty much any development project.
#
class projects::developer {

  include 'java'
  include 'java6'
  include 'projects::developer::applications'

  # vagrant::plugin { 'vagrant-vmware-fusion':
  #   license => 'puppet:///modules/people/joe/licenses/fusion.lic',
  # }

  # Homebrew Packages
  # package { [   #  "provider => homebrew, ensure => present," are assumed as defaults
  #     'gradle',
  #     'groovy',
  #   ]:
  # }

}
