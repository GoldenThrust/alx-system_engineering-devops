# create a file(school) in /tmp

file { '/tmp/school/':
  content => 'I love Puppet',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
}
