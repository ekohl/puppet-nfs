# Class: nfs::client::install::debian
#
#
class nfs::client::install::debian {
	package { [ 'nfs-common', 'portmap' ]:
		ensure => present,
	}
}
