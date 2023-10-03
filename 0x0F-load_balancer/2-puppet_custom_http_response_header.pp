# Install Nginx and customize web server header

exec { 'update_package_cache':
  provider    => shell,
  command     => 'sudo apt-get -y update',
  refreshonly => true,
}

exec { 'install_nginx':
  provider => shell,
  command  => 'sudo apt-get -y install nginx',
  require  => Exec['update_package_cache'],
}

exec { 'add_header':
  provider => shell,
  command  => 'sed -i "/server_name _;/a
      \n\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;\
       \n\terror_page 404 /404.html;\
      \n\tlocation = /404.html {\
      \n\t        root /var/www/html;\
      \n\t        internal;\
      \n\t}\
      \n\tadd_header X-Served-By \$HOSTNAME;" /etc/nginx/sites-enabled/default',
  require  => Exec['install_nginx'],
}

exec { 'restart_service':
  provider => shell,
  command  => 'service nginx start; service nginx restart',
  require  => Exec['add_header'],
}
