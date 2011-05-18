# Class: nfs::server::install
#
#
class nfs::server::install {
	package { 'nfs-kernel-server':
		ensure => present,
	}
}
