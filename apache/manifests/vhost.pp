define apache::vhost ($port, $document_root, $servername,$vhost_name = '*', $vhost_dir) {

	File {
		mode => "0677",
	}
	
#	$default_index = "index_${servername}_${port}"
#	$default_config = "config_${servername}_${port}"

	
#	file { $document_root:
#       		ensure  => directory,
#       		recurse => true,
#		before  => File[$default_index],
#	}
	
	file { "index":
		path    => "${document_root}/index.html",
		ensure  => file,
		content => template('apache/index.html.erb'),
		before  => File['config_file'],
	}
	
	file { "config_file":
		path    => "${vhost_dir}/${servername}.conf",
		content => template ('apache/vhost.conf.erb'),
		require => Package['apache'],
		notify  => Service['apache'],
	}

}

