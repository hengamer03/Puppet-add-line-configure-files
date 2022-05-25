# this file should be in the /etc/puppetlabs/environments/production/modules/(filename)/manifests/init.pp


class bashrc {

  file { '/etc/bashrc':
    ensure => present,
  }
  file_line { 'add cowsay':
    path => '/etc/bashrc',
    line => 'cowsay Welcome to Puppet!',
  }
}
