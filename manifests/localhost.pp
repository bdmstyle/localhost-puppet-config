exec { "apt-update":
command => "/usr/bin/apt-get update"
}

package { "ruby":
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

package { "groovy":
ensure => installed,
require => Exec["apt-update"],
}

package { "postgresql":
ensure => installed,
require => Exec["apt-update"],
}

package { "libssl0.9.8":
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

package { "mongodb":
ensure => installed,
require => Exec["apt-update"],
}

package { 'sass':
    ensure   => 'installed',
    provider => 'gem',
}

package { "terminator":
ensure => installed,
require => Exec["apt-update"],
}


