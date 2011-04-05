# Class: nfs::params
#
#
class nfs::params {
	$use_exports = $nfs_use_exports ? {
		'true'  => true,
		'false' => false,
		default => false
	}
}
