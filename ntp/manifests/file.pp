class ntp::file ($template = $ntp::params::template, $servers=$ntp::params::default_servers) inherits ntp { 

#	case $::operatingsystem {
#		'ubuntu': {$template = 'ntp_ubuntu.conf'}
#		'RedHat': {$template = 'ntp_centos.conf'}
#		default : {fail('OS $::operatingsystem is not currently supported')}
#	}

	#$template = $ntp::params::template
	#$servers = $ntp::params::default_servers
	
	notify { "This template variable is now ${template}":}
	file {'/etc/ntp.conf':
		ensure  => file,
		require => Package['ntp'],
	#	content => template("ntp/${template}.erb"),

	}

}
