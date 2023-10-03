# Install Nginx and customize web server header

exec { 'update_package_cache':
  provider    => shell,
  command     => 'sudo apt-get -y update',
  refreshonly => true,
}

exec { 'install_nginx':
  provider => shell,
  command  => 'sudo apt-get -y install nginx',
}

exec { 'add_header':
  provider => shell,
  command  => 'sudo sed -i "/listen 80 default_server;/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-enabled/default',
  require  => Exec['install_nginx'],
  before   => Exec['restart Nginx'],
}

exec { 'restart service':
  provider => shell,
  command  => 'servive nginx restart',
  require  => Exec['install_nginx'],
}
