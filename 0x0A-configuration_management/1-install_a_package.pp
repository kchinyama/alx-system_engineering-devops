# demo showing the installation of flask from pip using puppet

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
