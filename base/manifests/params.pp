class base::params {
 	case $::osfamily {
                'Redhat': { $ssh_name = 'sshd'}
                'Debian': { $ssh_name = 'ssh'}
                default : {Warning('OS not support by puppet modules SSH')}
        }


	$author = "anny"
}


        #$ssh_name = $osfamily ? {
        #'Redhat' => 'sshd',
        #'Debian' => 'ssh',
        # default => 'value',

