# == Description
#
# Oracle client
# http://lastpass.com/
#
class packages::oracle_client (
  $artifactory_server = 'artifactory.corp.ositax.com',
  $artifactory_port = '8081',
  $distribution_url = 'distributions/oracle-database/boxen/',
  $version = '11.2.0.4.0',
) {

  include 'archive'

  $tmpDir = '/tmp/oracle-client'
  $basiclite = "instantclient-basiclite-macos.x64-${version}.zip"
  $sqlplus = "instantclient-sqlplus-macos.x64-${version}.zip"

  file { $tmpDir:
    ensure => 'directory',
  }

  archive::artifactory { "${tmpDir}/${basiclite}":
    ensure => present,
    extract => true,
    extract_path => $tmpDir,
    server => $artifactory_server,
    port => $artifactory_port,
    url_path => "${distribution_url}/${basiclite}",
    cleanup => true,
    require => File[$tmpDir],
  }

  archive::artifactory { "${tmpDir}/${sqlplus}":
    ensure => present,
    extract => true,
    extract_path => $tmpDir,
    server       => $artifactory_server,
    port => $artifactory_port,
    url_path => "${distribution_url}/${sqlplus}",
    cleanup => true,
    require => File[$tmpDir],
  }

  file { readme_files:
    path => '/tmp',
    source => ['/tmp/oracle-client/instantclient_11_2/BASIC_LITE_README', '/tmp/oracle-client/instantclient_11_2/SQLPLUS_README'],
    sourceselect => all,
  }
}
