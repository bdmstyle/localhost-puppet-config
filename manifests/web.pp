exec { "apt-update":
command => "/usr/bin/apt-get update"
}

include oraclejdk8
oraclejdk8::install{oraclejdk8-local:}

package { "vim":
ensure => installed,
require => Exec["apt-update"],
}

package { "tree":
ensure => installed,
require => Exec["apt-update"],
}

package { "htop":
ensure => installed,
require => Exec["apt-update"],
}

package { "curl":
ensure => installed,
require => Exec["apt-update"],
}

package { "ack-grep":
ensure => installed,
require => Exec["apt-update"],
}

package { "apache2":
ensure => installed,
require => Exec["apt-update"],
}

package { "mongodb":
ensure => installed,
require => Exec["apt-update"],
}




