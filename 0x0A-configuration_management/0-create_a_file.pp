# demo of using puppet to create a file

file { '/tmp/school':
    ensure  => present,
    owner   => 'www-data',
    group   => 'www-data',
    mode    => '0744',
    content => 'I love Puppet'
}
