# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.7.0"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "2.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.2.0"
github "git",         "2.7.1"
github "go",          "2.1.0"
github "homebrew",    "1.9.8"
github "hub",         "1.3.0"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.4"
github "nodejs",      "4.0.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.7"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"
github "puppet-property_list_key", "~> 0.2", :repo => "glarizza/puppet-property_list_key"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "archive", "0.1.7", :repo => "nanliu/puppet-archive"

##
## Please keep sorted
##
#github "adium",          "~> 1.3"
github "alfred",          "~> 1.4"
github "atom",            "~> 1.2"
#github "augeas",         "~> 1.3"
github "caffeine",       "~> 1.0"
#github "calibre",        "~> 3.1"
github "chrome",         "~> 1.1"
#github "cloudapp",       "~> 1.0"
github "crashplan",      "~> 1.0"
github "cyberduck",      "~> 1.0", :repo => "zoobert/puppet-cyberduck"
github "docker",         "~> 0.8"
github "dropbox",        "~> 1.2"
github "evernote",       "~> 2.0"
github "firefox",        "~> 1.1"
#github "googledrive",    "~> 1.0"
#github "graphviz",       "~> 1.0"
#github "handbrake",      "~> 1.0"
github "heroku",         "~> 2.1"
github "htop",            "~> 1.0", :repo => "skottler/puppet-htop"
#github "imagemagick",    "~> 1.2"
github "intellij",       "~> 1.4"
github "iterm2",         "~> 1.0"
github "java",           "~> 1.8"
github "java6",          "~> 0.0", :repo => "burnsra/puppet-java6" 
#github "keepassx",       "~> 1.0"
#github "kindle",         "~> 1.0"
#github "launchbar",      "~> 1.1"
github "maven",           "~> 1.0", :repo => "steinim/puppet-maven"
#github "mongodb",        "~> 1.3"
#github "ohmyzsh",         "~> 1.0", :repo => "erivello/puppet-ohmyzsh"
#github "omnigraffle",    "~> 1.3"
github "osx",            "~> 2.2"
#github "p4merge",        "~> 0.0", :repo => "steinim/puppet-p4merge"
#github "pcre",           "~> 1.0"
github "skitch",         "~> 1.0"
#github "skydrive",       "~> 1.0"
github "skype",          "~> 1.0"
github "sourcetree",     "~> 1.0"
github "spotify",        "~> 1.0"
github "steam",          "~> 1.0"
github "sublime_text",   "~> 1.1"
#github "swig",           "~> 1.0"
github "tmux",           "~> 1.0"
github "vagrant",        "~> 3.0"
github "virtualbox",     "~> 1.0"
github "vlc",            "~> 1.0"
github "wget",           "~> 1.0"
github "zsh",            "~> 1.0"
