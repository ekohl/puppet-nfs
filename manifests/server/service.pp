# Class: nfs::server::service
#
#
class nfs::server::service {
	case $operatingsystem {
		/(?i)(Debian|Ubuntu)/:  { include nfs::server::service::debian }
		/(?i)(RedHat|CentOS)/:  { include nfs::server::service::redhat }
		default:                { notice "Unsupported operatingsystem ${operatingsystem} in 'nfs' module" }
	}
}
