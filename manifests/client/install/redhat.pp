# Class: nfs::client::install::redhat
#
#
class nfs::client::install::redhat {
	if $lsbmajdistrelease == 6 {
		package { 'rpcbind':
      ensure => present,
    }
	} else {
		package { 'portmap':
			ensure => present,
		}
	}
}
