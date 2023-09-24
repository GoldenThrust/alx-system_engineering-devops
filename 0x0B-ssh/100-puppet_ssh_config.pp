# puppet manifest to set up client SSH configuration file
$con_file = '/etc/ssh/ssh_config'

file_line {'Declare identity file':
  ensure => 'present',
  line   => '    IdentityFile ~/.ssh/school',
  path   => $con_file,
}

file_line {'Turn off passwd auth':
  ensure => 'present',
  path   => $con_file,
  line   => '    PasswordAuthentication no',
}
