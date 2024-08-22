# demo of changing limit in order to allow more traffic

exec { 'nginx fix-limit':
  onlyif   => 'test -e /etc/default/nginx',
  command  => "sed -i s/'-n 15'/'-n 4096'/g /etc/default/nginx",
}

exec { 'restart nginx':
  command  => "service nginx restart",
}
