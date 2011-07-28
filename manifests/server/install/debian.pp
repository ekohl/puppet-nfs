# Class: nfs::server::install::debian
#
#
class nfs::server::install::debian {
	package { 'nfs-kernel-server':
		ensure => present,
	}
}
