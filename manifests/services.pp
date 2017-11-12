service {'ntpd':
        ensure = > 'running',
        enable = > 'True',
        }
        {'haproxy':
        ensure = > 'running',
        enable = > 'True',
        }
        {'nginx':
        ensure = > 'running',
        enable = > 'True',
        }
        {'php-fpm':
        ensure = > 'running',
        enable = > 'True',
        }
        {'redis':
        ensure = > 'running',
        enable = > 'True',
        }
        {'maria-db':
        ensure = > 'running',
        enable = > 'True',
        }
