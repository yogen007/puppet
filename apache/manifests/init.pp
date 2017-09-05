class apache ( 
	$package_name  = $apache::params::package_name,
	$service_name  = $apache::params::service_name,
	$vhosts_dir    = $apache::params::vhost_dir,
	$conf_dir      = $apache::params::conf_dir,
	$document_root = $apache::params::document_root,
	$servername    = $apache::params::servername,
	$log_dir       = $apache::params::log_dir,
) inherits apache::params {

include apache::package
include apache::service
	
}

file { $document_root:
	ensure  => directory,
	recurse => true,
}

file { $log_dir:
	ensure  => directory,
	recurse => true,
}
  apache::vhost { "default":
                port          => 78,
                document_root => $document_root,
                servername    => $servername,
                vhost_dir     => $vhost_dir,
        }
	
#apache::vhost { "default":
#                port          => 78,
#                document_root => "${document_root}/master1b",
#                servername    => "master1b.puppet.com",
#                vhost_dir     => $vhost_dir,
#}



