#class base::ssh inherits base::params{
class base::ssh {

	package { 'openssh-package':
		name   => 'openssh-server',
		ensure => present,
	}

	file { '/etc/ssh/sshd_config':
		ensure  => file,
		owner   => 'root',
		group   => 'root',
		source  => 'puppet:///modules/base/sshd_config',
		require => Package['openssh-package'],
		notify  => Service['sshd'],
	}

	service { 'sshd':
		name   => $base::params::ssh_name,
	#	name   => $ssh_name,
		ensure => running,
		alias  => 'ssh-service-name-two',
		enable => true,
	}
	
} 





