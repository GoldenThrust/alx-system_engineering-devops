# Puppet Manifest to Install and Configure Nginx

exec { 'install_nginx':
  command => 'sudo apt-get -y install nginx',
  unless  => 'dpkg -l | grep -qw nginx',
}

package { 'nginx':
  ensure => 'installed',
}

exec { 'update_package_cache':
  command     => 'apt-get -y update',
  refreshonly => true,
}

exec { 'allow_nginx_http':
  command => 'ufw allow Nginx HTTP',
  unless  => 'ufw status | grep "Nginx Http"',
  require => Exec['install_nginx'],
}

file { '/var/www/html/index.html':
  ensure  => 'file',
  content => 'Hello World!\n',
  require => Exec['install_nginx'],
}

file { '/var/www/html/404.html':
  ensure  => 'file',
  content => "Ceci n'est pas une page\n",
  require => Exec['install_nginx'],
}

file { '/etc/nginx/sites-enabled/default':
  ensure  => 'file',
  content => "
server {
        listen 80 default_server;
        listen [::]:80 default_server;

	root /var/www/html;
	index index.html index.htm index.nginx-debian.html;
        server_name _;
        rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;

        error_page 404 /404.html;
        location = /404.html {
                root /var/www/html;
                internal;
        }
        rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;

        location / {
                try_files ${uri} ${uri}/ =404;
        }
}
",
  require => Exec['install_nginx'],
  notify  => Service['nginx'],
}

exec { 'start service':
  command => 'servive nginx start',
  require => Exec['install_nginx'],
}

exec { 'restart service':
  command => 'servive nginx restart',
  require => Exec['install_nginx'],
}

service { 'nginx':
  ensure    => 'running',
  enable    => true,
  require   => Exec['install_nginx'],
  subscribe => File['/etc/nginx/sites-enabled/default'],
}

