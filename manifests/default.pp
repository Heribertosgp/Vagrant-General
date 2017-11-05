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
