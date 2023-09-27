# Puppet Manifest to Install and Configure Nginx

# Ensure that the Nginx package is installed
exec { 'install_nginx':
  command => 'sudo apt-get -y install nginx',
  unless  => 'dpkg -l | grep -qw nginx',
}

# Update the system package cache
exec { 'update_package_cache':
  command     => 'apt-get -y update',
  refreshonly => true,
}

# Allow HTTP traffic through the firewall for Nginx
exec { 'allow_nginx_http':
  command => 'ufw allow Nginx Http',
  unless  => 'ufw status | grep "Nginx Http"',
  require => Exec['install_nginx'],  # Make sure Nginx is installed before configuring firewall
}

# Create the index.html and 404.html files
file { '/var/www/html/index.html':
  ensure  => 'file',
  content => 'Hello World!',
  require => Exec['install_nginx'],  # Make sure Nginx is installed before creating files
}

file { '/var/www/html/404.html':
  ensure  => 'file',
  content => "Ceci n'est pas une page",
  require => Exec['install_nginx'],  # Make sure Nginx is installed before creating files
}

# Configure Nginx to include rewrite and error_page directives
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
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files ${uri} ${uri}/ =404;
        }
}",
  require => Exec['install_nginx'],  # Make sure Nginx is installed before configuring Nginx
  notify  => Service['nginx'],
}

# Ensure the Nginx service is running
service { 'nginx':
  ensure    => 'running',
  enable    => true,
  require   => Exec['install_nginx'],  # Make sure Nginx is installed before managing the service
  subscribe => File['/etc/nginx/sites-enabled/default'],
}

