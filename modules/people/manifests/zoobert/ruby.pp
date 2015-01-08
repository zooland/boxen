# == Description
#
# Ruby settings and gems specific for Kevin Loveland (aka "zoobert").
#
class people::zoobert::ruby {

  require 'ruby::global'

  validate_re($ruby::global::version, '^\S+')

  # ruby::version { '1.9.3-p547': }

  ruby_gem { "asciidoctor for ${ruby::global::version}":
    gem          => 'asciidoctor',
    ruby_version => $ruby::global::version,
    version      => '~> 1.5'
  }

}
