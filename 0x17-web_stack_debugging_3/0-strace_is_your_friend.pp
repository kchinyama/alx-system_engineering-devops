# fixes error in wordpress file, error is extension phpp to php

exec { 'fix-wordpress_file':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
