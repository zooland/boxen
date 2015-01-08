# == Description
#
# Scripts and similiar for Kevin Loveland (aka "zoobert").
#
class people::zoobert::bin {

  # Gradle Wrapper finder script
  file { '/usr/bin/gw':
    source  => 'puppet:///modules/people/zoobert/bin/gw',
    mode    => '0755',
  }

}
