# configuration of nginx via puppet
package { 'nginx':
  provider => 'apt-get',
}

file { '/var/www/html/index.html':
  ensure  => 'file',
  content => 'Hello World!',
}

file { '/etc/nginx/sites-available/my_site.conf':
  ensure  => 'file',
  content => "
    server {
      listen 80 default_server;
      root /var/www/html;
      index index.html index.htm index.nginx-debian.html;
      server_name _;

      location / {
        try_files \$uri \$uri/ =404;
      }

      location = / {
        return 301 http://\$host\$request_uri;
      }
    }
  ",
}

exec { 'enable_my_site':
  command => 'ln -s /etc/nginx/sites-available/my_site.conf /etc/nginx/sites-enabled/',
  creates => '/etc/nginx/sites-enabled/my_site.conf',
  require => File['/etc/nginx/sites-available/my_site.conf'],
}

service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => Exec['enable_my_site'],
}

