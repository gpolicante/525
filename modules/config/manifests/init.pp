
class config {

file{"/etc/puppetlabs/puppet/puppet.conf":
	source => "puppet:///modules/config/puppet.conf", 
	ensure => present
    }

service {'puppet':
	ensure => running,
	enable => true
	}



		}
