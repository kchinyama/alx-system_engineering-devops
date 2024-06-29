# demo of how to install software(flask) via puppet

package { 'flask 2.1.0':
    ensure   => 'present',
    provider => 'pip3'
}
