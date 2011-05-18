# Class: nfs::client::service::debian
#
#
class nfs::client::service::debian {
	service { 'portmap':
		ensure     => running,
		enable     => true,
		hasstatus  => true,
		hasrestart => true,
		require => Class['nfs::client::install::debian'],
	}

	# Only Debian has nfs-common
	if $operatingsystem =~ /(?i)(Debian)/ {
		service { 'nfs-common':
			ensure     => running,
			enable     => true,
			hasstatus  => true,
			hasrestart => true,
			require => Class['nfs::client::install::debian'],
		}
	}
}
