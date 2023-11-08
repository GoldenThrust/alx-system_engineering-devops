# puppet to fix Apache 500 error

exec { 'Fix Wordpress Website':
  command  => '/usr/bin/find /var/www/html -type f -name "*.php" -exec sed -i "s/\.phpp/.php/g" {} +',
  provider => shell,
  path     => '/bin:/usr/bin',
  onlyif   => '/usr/bin/find /var/www/html -type f -name "*.php" -exec grep -q ".phpp" {} \;',
  require  => Package['sed'],
}

