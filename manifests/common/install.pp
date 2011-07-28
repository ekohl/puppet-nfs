# Class: nfs::common::install
#
#
class nfs::common::install {
	case $operatingsystem {
		/(?i)(Debian|Ubuntu)/:  { include nfs::common::install::debian }
		/(?i)(RedHat|CentOS)/:  { include nfs::common::install::redhat }
		default:                { notice "Unsupported operatingsystem ${operatingsystem} in 'nfs' module" }
	}
}
