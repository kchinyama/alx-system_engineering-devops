# demo of how to install software(flask) via puppet

package { 'flask':
    ensure   => 'present',
    provider => 'pip3'
}
