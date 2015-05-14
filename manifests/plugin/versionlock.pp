# = Class yum::plugin::versionlock
#
#
class yum::plugin::versionlock (
  $ensure = present,
  $path   = '/etc/yum/pluginconf.d/versionlock.list',
) {

  package { 'yum-plugin-versionlock':
    ensure => $ensure
  }

  file { $path:
    ensure => $ensure,
    path   => $path,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
}
