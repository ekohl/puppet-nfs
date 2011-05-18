# Class: nfs::server::service
#
#
class nfs::server::service {
	service { 'nfs-kernel-server':
		ensure     => running,
		enable     => true,
		hasstatus  => true,
		hasrestart => true,
		require    => Class['nfs::server::config'],
	}
}
