#Puppet file
$files = [ 'first', 'second', 'third' ]
$files.each |$file| {
  if ( $file == 'third') {
  $fyle_type = 'directory'
  }
  else {
  $file_type = 'file'
  }
}
package { 'openssh':
  ensure => present,
}
package { 'openssh':
  ensure => present,
}
package { 'openssh':
  ensure => present,
}
package { 'openssh':
  ensure => present,
}
file { 'motd':
  path => '/etc/motd',
}
file { 'motd':
  path => '/etc/motd',
}
file { 'motd':
  path => '/etc/motd',
}
service { 'httpd':
  ensure => running,
  enable => true,
}
service { 'httpd':
  ensure => running,
  enable => true,
}
service { 'httpd':
  ensure => running,
  enable => true,
}
