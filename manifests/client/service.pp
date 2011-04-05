# Class: nfs::client::service
#
#
class nfs::client::service {
	case $operatingsystem {
		/(?i)(Debian|Ubuntu)/:  { include nfs::client::service::debian }
		/(?i)(RedHat|CentOS)/:  { include nfs::client::service::redhat }
		default:                { notice "Unsupported operatingsystem ${operatingsystem} in 'nfs' module" }
	}
}
