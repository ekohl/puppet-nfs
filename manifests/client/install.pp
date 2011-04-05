# Class: nfs::client::install
#
#
class nfs::client::install {
	case $operatingsystem {
		/(?i)(Debian|Ubuntu)/:  { include nfs::client::install::debian }
		/(?i)(RedHat|CentOS)/:  { include nfs::client::install::redhat }
		default:                { notice "Unsupported operatingsystem ${operatingsystem} in 'nfs' module" }
	}
}
