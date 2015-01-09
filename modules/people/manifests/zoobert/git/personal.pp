# == Description
#
# Git repositories specific for Kevin Loveland (aka "zoobert") that
# should be on his personal (non-work) machines.
#
class people::zoobert::git::personal {

  $home = "/Users/${::boxen_user}"
  $srcdir = "${home}/src"

  validate_absolute_path($srcdir)

  # repository { "${srcdir}/flickr2picasa" :
  #   source => 'git@bitbucket.org:zoobert/flickr2picasa.git',
  #   path   => "${srcdir}/flickr2picasa",
  # }
  # ->
  # git::config::local { "${srcdir}/flickr2picasa":
  #   key   => 'user.email',
  #   value => 'moore.jim@gmail.com',
  # }


  # repository { "${srcdir}/flickr" :
  #   source => 'https://zoobert@bitbucket.org/zoobert/flickr.git',
  #   path   => "${srcdir}/flickr",
  # }
  # ->
  # git::config::local { "${srcdir}/flickr":
  #   key   => 'user.email',
  #   value => 'moore.jim@gmail.com',
  # }


  # repository { "${srcdir}/spring-social-flickr" :
  #   source => 'https://github.com/zoobert/spring-social-flickr.git',
  #   path   => "${srcdir}/spring-social-flickr",
  # }
  # ->
  # git::config::local { "${srcdir}/spring-social-flickr":
  #   key   => 'user.email',
  #   value => 'moore.jim@gmail.com',
  # }

}
