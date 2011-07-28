# Class: nfs::server::service::debian
#
#
class nfs::server::service::debian {
	service { 'nfs-server':
		name       => "nfs-kernel-server",
		ensure     => running,
		enable     => true,
		hasstatus  => true,
		hasrestart => true,
		require    => Class['nfs::server::config'],
	}
}
