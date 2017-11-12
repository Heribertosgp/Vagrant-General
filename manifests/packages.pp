package  {'haproxy':
          ensure => 'installed'
          provider => 'yum'
          }
          {'nginx':
          ensure => 'installed'
          provider => 'yum'
          }
          {'php-fpm':
          ensure => 'installed'
          provider => 'yum'
          }
          {'Redis':
          ensure => 'installed'
          provider => 'yum'
          }
          {'maria-db':
          ensure => 'installed'
          provider => 'yum'
          }
          {'salt':
          ensure => 'installed'
          provider => 'yum'
          }
