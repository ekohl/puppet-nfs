# Class: nfs::client::service::redhat
#
#
class nfs::client::service::redhat {
	service { 'nfslock':
		ensure     => running,
		enable     => true,
		hasstatus  => true,
		hasrestart => true,
		require => Class['nfs::client::install::redhat'],
	}
 
	service { 'netfs':
		enable     => true,
		hasstatus  => true,
		hasrestart => true,
		require => Class['nfs::client::install::redhat'],
	}
	
	if $lsbmajdistrelease == 6 {
		service { 'rpcbind':
			ensure    => running,
			enable    => true,
			hasstatus => true,
			require => Class['nfs::client::install::redhat'],
		}
	} else {
		service { 'portmap':
			ensure     => running,
			enable     => true,
			hasstatus  => true,
			hasrestart => true,
			require => Class['nfs::client::install::redhat'],
		}
	}
}
