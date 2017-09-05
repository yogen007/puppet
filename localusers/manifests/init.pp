class localusers {
	user {'admin':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/admin',
		gid        => 'wheel',
		managehome => true,
		password     => '$6$9v/7O1GW$vaEelqd9ATlY58C8.MWMHeoJ/SKGTdo3ujO2mAFhC8va/Do1WBirYMC/KrNXewQpnTXkvm853yHLx9PZfRDLU1',
	}		

	user { 'jeff':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/jaff',
		groups     => ['wheel','finance'],
		managehome => true,
	}


}

