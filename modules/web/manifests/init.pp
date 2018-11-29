class web {

case $::osfamily {

	"Debian": {
	$apache = "apache2"
	

		  }

	"RedHat": {
	$apache = "httpd" 


		  }



	         }

package{$apache:
	ensure => present
	}


file{'/var/www/html/index.html':
	source => "puppet:///modules/web/index",
	ensure => present
    }











} 
