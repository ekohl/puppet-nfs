# Class: nfs::server::config
#
#
class nfs::server::config {
	case $operatingsystem {
		/(?i)(Debian|Ubuntu)/:  { include nfs::server::config::debian }
		/(?i)(RedHat|CentOS)/:  { include nfs::server::config::redhat }
		default:                { notice "Unsupported operatingsystem ${operatingsystem} in 'nfs' module" }
	}

	# Setup concat module
	include concat::setup
	
	# Setup the exports file for concat module
	concat { '/etc/exports':
		owner   => root,
		group   => root,
		mode    => 644,
		notify  => Exec['reload-nfs-server'],
		require => Class['nfs::server::install'],
	}
	
}
