# Class: nfs::client::service::redhat
#
#
class nfs::client::service::redhat {
	Service {
		require => Class['nfs::client::install::redhat']
	}
	
	service { 'nfslock':
		ensure     => running,
		enable     => true,
		hasstatus  => true,
		hasrestart => true
	}
 
	service { 'netfs':
		enable     => true,
		hasstatus  => true,
		hasrestart => true
	}
	
	if $lsbmajdistrelease == 6 {
		service { 'rpcbind':
			ensure    => running,
			enable    => true,
			hasstatus => true
		}
	} else {
		service { 'portmap':
			ensure     => running,
			enable     => true,
			hasstatus  => true,
			hasrestart => true
		}
	}
}
