import 'ssh-keys'
import 'rdiff-backup'
import 'ntp'

node ntepuppetmaster01 {
	include ssh-keys
	include rdiff-backup
	include snmpd
}


node ntebck01 {
	include ssh-keys
	include rdiff-backup
	include ntp
}

node ntenettest01 {
	include ssh-keys
        include rdiff-backup
        include ntp
}

node ntemysql02 {
	include ssh-keys
        include rdiff-backup
        include ntp
}

node ntewww07 {
	include ssh-keys
        include rdiff-backup
        include ntp
	include snmpd
}

node ntewww08 {
	include ssh-keys
        include rdiff-backup
        include ntp
	include snmpd
}

node ntewww09 {
	include ssh-keys
        include rdiff-backup
        include ntp
	include snmpd
}

node subversion {
	include ssh-keys
        include rdiff-backup
        include ntp
}

node jira {
	include ssh-keys
        include rdiff-backup
        include ntp
}

node jenkins {
	include ssh-keys
        include rdiff-backup
        include ntp
}

node testy {
        include ssh-keys
        include rdiff-backup
        include snmpd
	include ntp
}

node ntedevtst01 {
	include rdiff-backup
	include ssh-keys
	include ntp
}

node puppetdemo {
}
