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

ssh_authorized_key {'John Sverre Barli':
        ensure => present,
        key => 'AAAAB3NzaC1yc2EAAAABJQAAAQBmP4TLDaz0B7xf55RPWzstE/C8UCSMFroT8JcdlwYans3b3CRYis6hSgqvGW6/UJxh1LuRWwvI/CPU1gpxB5GMJZUVl+2gBO8UQXznuWqx/VTTNKl5m5knEY2fIimt57jpXSDCGE5PLJ66sOx21nj9+MPToHpeSUF6ObOI9D2pu7JTx9tLWaUIMl0dSHho8ec+XTVu1vX7rNFHC0FM+Ex9aUeDteHHhVdEYAAMVidCaRbcW1Ss8DUm+NvaMEDdiodscvMUQ3c1cwF/gzO29/nIUnhP63DFXm+7kz+2HIl04M5quP7A4WuC+lCvjHQbo5k9R/VuiDQh4flcnEg+Itcj',
        name => 'john.s.barli',
        type => 'ssh-rsa',
        user => 'root',
        }

ssh_authorized_key {'Per Aage Trapnes':
        ensure => present,
        key => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAw3SGCQrfUFQYq9tn8ubRm7NOQ/u2kss9DnBeGLEBKcic58Uw16mY7skH6MVZc+yBP5h0zYQBzKur++kqgLEtsx478rqAyVx/jmD9XxLXRQoHvSSIJ9OoCKcuXdKXbfi9rV6CSsMleRHGpCIYpQ5ooTTcOSwanmnlyF2fdhkAo70=',
        name => 'per.aa.trapnes',
        type => 'ssh-rsa',
        user => 'root',
	}	

}

