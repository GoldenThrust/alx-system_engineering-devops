# Resolve holberton user and file opening issue

exec { 'increase-file-limit-for-holberton-user':
  provider => shell,
  command  => 'sed -i -e "/holberton hard/s/5/55555/" -e "/holberton soft/s/4/55555/" /etc/security/limits.conf',
}

