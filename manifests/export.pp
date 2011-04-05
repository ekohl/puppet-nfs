define nfs::export ($ensure=present, $share, $options="", $guest) {
  $concatshare = substitute($share, '/', '-')
  $concatguest = substitute($guest, '/','-')

	if $options == "" {
		$content = "${share}\t${guest}\n"
	} else {
		$content = "${share}\t${guest}($options)\n"
	}

	concat::fragment { "nfs-server-${concatshare}-on-${concatguest}":
		target  => "/etc/exports",
		order   => 10,
		content => $content
	}
}
