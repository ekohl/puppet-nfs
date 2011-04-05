# Class: nfs::client
#
#
class nfs::client inherits nfs {
	include nfs::client::install, nfs::client::service
}
