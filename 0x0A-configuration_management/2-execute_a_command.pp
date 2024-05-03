# demo script showing the death of a command

exec { 'kill me please':
  command => '/alx-system_engineering-devops/0x0A-configuration_management/p-kill -f killmenow',
  onlyif  => '/alx-system_engineering-devops/0x0A-configuration_management/p-kill -f killmenow',
  path    => ['/alx-system_engineering-devops/0x0A-configuration_management', '/0x0A-configuration_management'],
}
