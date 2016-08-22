exec { "apt-update":
command => "/usr/bin/apt-get update"
}

package { "unrar":
ensure => installed,
require => Exec["apt-update"],
}

package { "wine":
ensure => installed,
require => Exec["apt-update"],
}

package { "memcached":
ensure => installed,
require => Exec["apt-update"],
}

package { "postgresql":
ensure => installed,
require => Exec["apt-update"],
}

package { "vim":
ensure => installed,
require => Exec["apt-update"],
}

package { "git":
ensure => installed,
require => Exec["apt-update"],
}

package { "htop":
ensure => installed,
require => Exec["apt-update"],
}

package { "ack-grep":
ensure => installed,
require => Exec["apt-update"],
}

package { "maven":
ensure => installed,
require => Exec["apt-update"],
}

package { "meld":
ensure => installed,
require => Exec["apt-update"],
}

package { "tree":
ensure => installed,
require => Exec["apt-update"],
}

package { "curl":
ensure => installed,
require => Exec["apt-update"],
}

package { "terminator":
ensure => installed,
require => Exec["apt-update"],
}


package { "openjdk-8-jdk":
ensure => installed,
require => Exec["apt-update"],
}

