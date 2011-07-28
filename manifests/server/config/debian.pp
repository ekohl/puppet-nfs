# Class: nfs::server::config::debian
#
#
class nfs::server::config::debian {
	exec { 'reload-nfs-server':
		command     => '/etc/init.d/nfs-kernel-server reload',
		refreshonly => true,
		require     => Class['nfs::server::install'],
	}
