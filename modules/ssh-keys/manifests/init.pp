class ssh-keys  {

ssh_authorized_key {'Torgeir Arnoy':
	ensure => present,
	key => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAle4QSZFw7avE2O9rKR4XfLJoshFGzVkvzQXSKLx6zR51hpmMghB8+Iiwjq0fiffDV2l7ioDMUe6kkbzTGLr9h/vZkl3BUdpf0W8fHYdEe1RtLaDyjTMrAU2+/hm2ttRrX7xtOJ2UBkGiyeCFjgGe00QXZboPz5oVY3JBqxpa8Ns=',
	name => 'torgeir.arnoy',
	type => 'ssh-rsa',
	user => 'root',
	}

ssh_authorized_key {'Bjarne Betjent':
	ensure => absent,
	key => 'YBVHGVasdsad787sdaJHBd',
	name => 'bjarne',
	type => 'ssh-rsa',
	user => 'root',
	}	
	
}

