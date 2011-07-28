# Class: nfs::server::config::redhat
#
#
class nfs::server::config::redhat {
	exec { 'reload-nfs-server':
		command     => '/sbin/service nfs reload',
		refreshonly => true,
		require     => Class['nfs::server::install'],
	}
}
