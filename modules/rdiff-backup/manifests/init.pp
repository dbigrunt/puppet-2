class rdiff-backup	{
	
	package {'rdiff-backup':
		ensure => installed,
	}
	
	file {'/usr/bin/backup':
		ensure => present,
		owner  => root,
		group  => root,
		mode   => 775,
		source => "puppet:///modules/rdiff-backup/backup.sh"
	}
	cron { rdiff-backup:
  		command => "/usr/bin/backup",
  		user    => root,
		minute  => 0
	}
}
