# Class: nfs::client::install::redhat
#
#
class nfs::client::install::redhat {
	package { 'nfs-utils':
		ensure => present
	}

	if $lsbmajdistrelease == 6 {
		package { 'rpcbind':
      ensure => present
    }
	} else {
		package { 'portmap':
			ensure => present
		}
	}
}
