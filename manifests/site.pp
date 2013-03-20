import 'ssh-keys'
import 'rdiff-backup'

node ntepuppetmaster01 {
	include ssh-keys
	include rdiff-backup
}


node ntebck01 {
	include ssh-keys
}

node ntenettest01 {
	include ssh-keys
}

node ntemysql02 {
	include ssh-keys
}

node ntewww07 {
	include ssh-keys
}

node ntewww08 {
	include ssh-keys
}

node ntewww09 {
	include ssh-keys
}

node subversion {
	include ssh-keys
}

node jira {
	include ssh-keys
}

node jenkins {
	include ssh-keys
}
