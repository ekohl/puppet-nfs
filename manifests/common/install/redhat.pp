# Class: nfs::common::install::redhat
#
#
class nfs::common::install::redhat {
	package { 'nfs-client':
		name => 'nfs-utils',
		ensure => present,
	}
}
