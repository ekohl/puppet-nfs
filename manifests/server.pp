# Class: nfs::server
#
#
class nfs::server inherits nfs::client {
	include nfs::server::install, nfs::server::config, nfs::server::service
	
	if $nfs::params::use_exports {
		Nfs::Export <<| tag == $fqdn |>>
	}
}
