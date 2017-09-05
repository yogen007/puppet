class base::motd {
	
#	$author = "yogen"
	$author = $base::params::author
	
	file { '/etc/motd':
		ensure  => file,
		owner   => "root",
		group   => "root",			
		content => template('base/motd.erb'),
		mode    => "0644"
	}
}
