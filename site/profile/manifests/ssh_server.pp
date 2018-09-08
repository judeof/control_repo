class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDsbc/Z7EpqFNviXWaMObkXAe03xR5llIllGvlZKh+ghHJmAElEEkia/krMNe73MN+1uCT9gQeNm/rFbxPTsyKJ6yRPiOvK6NQ+esdoSvXfKOgc8ryy+TDXbIuNs/kvW2JVzTWiJ+ZWuJPGxcDSK8V7iv8bazle0bc/WYylHOzr2P6u7cyIKv6ZeO0nb+PniMQpaCPrH95WlBkigs1RO9NLzYb+PNdfcgUxM8bu9w+8bH12XvIZn7HyotH4EVuSjVLFaDI3SDD8JUp+Bn/AiQ1aPJrtX7WCzHohUORBfdDEoTwQrp2lxmyafAP8d7RJ1R+QQkfCLtfwAKT38Ke3O/VV',
	}  
}
