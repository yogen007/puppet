class ntp ($package = package) inherits ntp::params {
#class ntp ($package = $ntp::params::package_name) inherits ntp::params {
#class ntp ($package) inherits ntp::params {
	package { 'ntp':
		name => $package,
		ensure => present,
	}
	
	notify { "This variable package is equal to ${package}": }

	class { 'ntp::file' : template => 'hello', }
	include ntp::service
}
