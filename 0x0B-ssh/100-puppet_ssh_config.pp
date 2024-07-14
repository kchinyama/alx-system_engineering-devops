#!/usr/bin/env bash
# configuring config file using puppet

file { '/etc/ssh/ssh_config':
	ensure => present,
	
content =>"

	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
