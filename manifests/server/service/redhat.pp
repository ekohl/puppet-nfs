# Class: nfs::server::service::redhat
#
#
class nfs::server::service::redhat {
	service { 'nfs-server':
		name       => "nfs",
		ensure     => running,
		enable     => true,
		hasstatus  => true,
		hasrestart => true,
		require    => Class['nfs::server::config'],
	}
}
