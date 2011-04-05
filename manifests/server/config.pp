# Class: nfs::server::config
#
#
class nfs::server::config {
	# Setup concat module
	include concat::setup
	
	# Setup the exports file for concat module
	concat { '/etc/exports':
		owner   => root,
		group   => root,
		mode    => 644,
		notify  => Exec['reload-nfs-server'],
		require => [ Class["nfs::server::install"] ]
	}
	
	exec { 'reload-nfs-server':
		command     => '/etc/init.d/nfs-kernel-server reload',
		refreshonly => true,
		require     => Class['nfs::server::install']
	}
}
