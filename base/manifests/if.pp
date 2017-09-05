class base::if {
	if $::hostname =~ /^master(\d+)/ {
		notify("you have arrived at server $0 ")
	}
}
