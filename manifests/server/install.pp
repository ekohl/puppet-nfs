# Class: nfs::server::install
#
#
class nfs::server::install {
	case $operatingsystem {
		/(?i)(Debian|Ubuntu)/:  { include nfs::server::install::debian }
		/(?i)(RedHat|CentOS)/:  { } # Handled by the common package
		default:                { notice "Unsupported operatingsystem ${operatingsystem} in 'nfs' module" }
	}
}
