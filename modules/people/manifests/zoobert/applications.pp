# == Description
#
# Applications specific for Kevin Loveland (aka "zoobert").
#
# == Parameters
#
# [*system_roles*]
#   An array of the roles that this system participates in.
#   Valid values are 'work' and 'personal'. If not passed in,
#   it is looked up in hiera using the key 'people::zoobert::system_roles'
#
class people::zoobert::applications (
  $system_roles = undef
) {

  $_system_roles = hiera_array('people::zoobert::system_roles', [])
  $roles = $system_roles ? { undef => $_system_roles, default => $system_roles}

  include people::zoobert::applications::general

  if member($roles, 'work') {
    include 'people::zoobert::applications::work'
  }
  elsif member($roles, 'personal') {
    include 'people::zoobert::applications::personal'
  }

}
