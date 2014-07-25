exec { "apt-update":
command => "/usr/bin/apt-get update"
}

include oraclejdk8
oraclejdk8::install{oraclejdk8-local:}

package { "ruby":
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

package { "skype":
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

package { "mongodb":
ensure => installed,
require => Exec["apt-update"],
}

package { 'sass':
    ensure   => 'installed',
    provider => 'gem',
}

package { "gnome-panel":
ensure => installed,
require => Exec["apt-update"],
}

package { "terminator":
ensure => installed,
require => Exec["apt-update"],
}


