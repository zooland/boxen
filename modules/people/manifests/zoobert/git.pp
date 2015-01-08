# == Description
#
# Git settings and repositories specific for Kevin Loveland (aka "zoobert").
#
# == Parameters
#
# [*system_roles*]
#   An array of the roles that this system participates in.
#   Valid values are 'work' and 'personal'. If not passed in,
#   it is looked up in hiera using the key 'people::zoobert::system_roles'
#
class people::zoobert::git (
  $system_roles = undef
) {

  $_system_roles = hiera_array('people::zoobert::system_roles')
  $roles = $system_roles ? { undef => $_system_roles, default => $system_roles}

  require people::zoobert::dotfiles

  include git
  include people::zoobert::git::global
  include people::zoobert::git::general

  if member($roles, 'work') {
    include people::zoobert::git::work
  }
  elsif member($roles, 'personal') {
    include people::zoobert::git::personal
  }
  else {
    $roles_str = join($roles, ', ')
    notify {"system_role is neither personal or work: ${roles_str}" :}
  }

}
