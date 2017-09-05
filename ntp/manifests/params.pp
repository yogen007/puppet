class ntp::params {
	case $::operatingsystem {
		'ubuntu': {
			$template = 'ntp_ubuntu.conf'
			$service_name = 'ntp'
			$default_servers = [ "0.ubuntu.pool.ntp.org",
					"1.ubuntu.pool.ntp.org",
					"2.ubuntu.pool.ntp.org",
					"3.ubuntu.pool.ntp.org", ]
		}
		'redhat': {
			$template = 'ntp_centos.conf'
			$service_name = 'ntpd'
			$default_servers = [ "0.centos.pool.ntp.org ibrust",
					"1.centos.pool.ntp.org ibrust",
					"2.centos.pool.ntp.org ibrust",	
					"3.centos.pool.ntp.org ibrust", ]
		}
		default : {fail('OS$::operatingsystem is not currently supported')}
	}
		$package_name ="ntp"
}

