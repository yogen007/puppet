class base {
	$dnsutil =$osfamily ? {
		'Redhat' => 'bind-utils',
		'Debian' => 'dnsutils',
	}

	package { ['tree','dnsutils']:
		ensure => present,
	}
}

