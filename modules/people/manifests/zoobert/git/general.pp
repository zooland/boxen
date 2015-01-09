# == Description
#
# Git repositories specific for Kevin Loveland (aka "zoobert")
# that should be on all his machines.
#
class people::zoobert::git::general {

  $home = "/Users/${::boxen_user}"
  $srcdir = "${home}/src"

  validate_absolute_path($srcdir)

  # # repository { "${srcdir}/octopress" :
  # #   source => 'https://zoobert@bitbucket.org/zoobert/octopress.git',
  # #   path   => "${srcdir}/octopress",
  # # }
  # # ->
  # git::config::local { "${srcdir}/octopress":
  #   key   => 'user.email',
  #   value => 'moore.jim@gmail.com',
  # }

}
