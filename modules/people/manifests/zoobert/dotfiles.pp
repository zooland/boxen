# == Description
#
# "Dot files" for Kevin Loveland (aka "zoobert").
#
# == Assumptions
#
# The .zshenv template assumes that the 'github_token' fact has been set.
# In Boxen, this is typically done in ~/.boxen/config.json
#
class people::zoobert::dotfiles {
  include git
  include 'oh-my-zsh'

  $home = "/Users/${::boxen_user}"

  # repository { 'oh-my-zsh' :
  #   source => 'https://github.com/zoobert/oh-my-zsh.git',
  #   path   => "${home}/.oh-my-zsh",
  # }

  file { "${home}/.zshrc":
    source => 'puppet:///modules/people/zoobert/zshrc',
  }

  file { "${home}/.zshenv":
    content => template('people/zoobert/zshenv.erb')
  }

  file { "${home}/.zprofile":
    source => 'puppet:///modules/people/zoobert/zprofile',
  }

  file { "${home}/.gitconfig":
    # This should probably be managed using the git module instead...
    source => 'puppet:///modules/people/zoobert/gitconfig',
  }

  file { "${home}/.profile":
    source => 'puppet:///modules/people/zoobert/profile',
  }

  file { "${home}/.shellpaths":
    source => 'puppet:///modules/people/zoobert/shellpaths',
  }

  file { "${home}/.shellaliases":
    source => 'puppet:///modules/people/zoobert/shellaliases',
  }

  file { "${home}/.shellvars":
    source => 'puppet:///modules/people/zoobert/shellvars',
  }

}
