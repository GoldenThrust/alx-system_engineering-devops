# puppet manifest to set up client SSH configuration file
$con_file = '/etc/ssh/ssh_config'

file_line {'Declare identity file':
  path   => $con_file,
  line   => '    IdentityFile ~/.ssh/school',
  ensure => 'present',
}

file_line {'Turn off passwd auth',
  path   => $con_file,
  line   => '    PasswordAuthentication no',
  ensure => 'present',
}
