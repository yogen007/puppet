class hierademo ($domain_name = "default", $api_key = "default_api_key") {
	$domainname = hiera('domain_name')
	notify { "The hiera domain_name value is: ${domainname}": }
	notify { "The domain name value is: ${domain_name}": }
	notify { "The api key value is: ${api_key}": }
}
  
