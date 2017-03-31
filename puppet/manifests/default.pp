Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }


  exec { 'apt-get update':
    command => 'apt-get update',
  }


  package { "haskell-platform":
    ensure  => present,
  }