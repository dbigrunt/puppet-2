class ssh-keys  {

ssh_authorized_key {'Torgeir Arnoy':
	ensure => present,
	key => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAle4QSZFw7avE2O9rKR4XfLJoshFGzVkvzQXSKLx6zR51hpmMghB8+Iiwjq0fiffDV2l7ioDMUe6kkbzTGLr9h/vZkl3BUdpf0W8fHYdEe1RtLaDyjTMrAU2+/hm2ttRrX7xtOJ2UBkGiyeCFjgGe00QXZboPz5oVY3JBqxpa8Ns=',
	name => 'torgeir.arnoy',
	type => 'ssh-rsa',
	user => 'root',
	}

ssh_authorized_key {'Torgeir Arnoy (linux)':
        ensure => present,
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCuDXPh1ETLqf1cmGzFXp8mWdbdOSTqpbaXEOOOOzUwsmJQVyMPJd2U9t+UpVrjfkfvBPxzx9UOPrxgWpn7Q42nsg8xUAT41kn0AnfYZQOTZ5nynM7DQif5Pu3rpwbwcWTufrN0W5U82vZU6JlV0OEleWHWKq9YZ4s+BycWlyFNomq9ix9Ae/qYTxHF3BHWba6K2r/7LnZrNuP4NxmVLsUhRIc1Z3kMSzSatCKxCwA8J9mkYkQ8ChytwL2aclJTQFBZ1Y6f1307SqUH196Drpyr9NEP+qEkfZsLc4/OktFKucVaBFuKqHSe9/dow61vRHIKFYJVGL0YDGica4tzAVt9',
        name => 'torgeir.arnoy.linux',
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

ssh_authorized_key {'Jan Einar Bjoru':
        ensure => present,
        key => 'AAAAB3NzaC1yc2EAAAABJQAAAQEAm5HKGY7k7kZlpUOS90LLgNw7idytZ2v6dk14PYab4BvwzecTDnDVrXS+rEPRvbT7POFhxbJglVS9lZiYTGnvn8H0juZGdMsQIo7GnV9RiQvDiYpv56HYtp4EYwquX4qPiZ+M4W6N5PW1QBlXY2cjWv0+TxBXn382nOhffTLcSjgasRfyzXU9vjXWUmfQeSKZhJTSXl3STZMxmJ+QnM/1TSqKjOPfBsJijsRfsHEg1c5mY5avqK4TipbUsMMTfTHkolUY6s+2qOpzKmkTlqrC6bVhXGQ6uSZX83lFWfH0r+zA3MSWVT+qkeyxAOEU8PMhu1gJ7BuY9I4ZlMZbpjbPGw==',
        name => 'jan.einar.bjoru',
        type => 'ssh-rsa',
        user => 'root',
        }

ssh_authorized_key {'Jorn Dyrkoren':
        ensure => present,
        key => 'AAAAB3NzaC1yc2EAAAABJQAAAQB/DkB4d/CkIgPyAlFfp7ymCZgf3Mp6DOHvC6Z1edGCCHJzqB1gmShJoG0ROgCtbYs1otDrkGmfUbphSY1tqx/btPig1SgbhaGnhz722yuyFg1fLXurm71Y9jV8RMYZrXQ1avOiNlbZ7to+UgkVxLON1WH1cKd17hdlxBuTFUi9U4KDR0Vyi5ieK4WXNLoi5E6LDE/Wus55r66GkyKRBnzL+cmrjlOcnCXDFik1x9QW6Bt+1owBhmncRUXAAw8rwlJBmV1Yk+EOd6DLRvn9VARYT6agSj62JXJeHr3sXnzfswIdQjThaY7EQG38GOKw87ST/PZ90X33w+vgbyKAi0rj',
        name => 'Jorn Dyrkoren',
        type => 'ssh-rsa',
        user => 'root',
        }

}


