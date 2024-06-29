# demo script of stopping a prcoess with exec in puppet

exec { 'killmenow':
    command => '/usr/bin/pkill -9 killmenow',
    onlyif  => '/usr/bin/pgrep killmenow >/dev/null',
}
