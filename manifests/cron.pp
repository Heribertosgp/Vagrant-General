cron  {'sample job';
  ensure => present,
  command => '/bin/bash/systenctl status nginx',
  user => 'vagrant',
  minute => '5',
}
