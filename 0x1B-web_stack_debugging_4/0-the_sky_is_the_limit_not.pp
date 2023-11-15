# resolve the issue of failing requests

exec { 'Increase-request-limit':
  provider => shell,
  command  => 'sed -i "s/15/4096/" /etc/default/nginx && /etc/init.d/nginx restart',
}
