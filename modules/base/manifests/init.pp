class base {

case $::osfamily {
	"RedHat": {
   $pacotes = ["epel-release","git","vim","sysstat","htop","cowsay","figlet"]
	$web = "httpd"

		  }


	"Debian": {

   $pacotes = ["git","vim","sysstat","htop","cowsay","figlet"]
	$web = "apache2"
	exec{"atualizando_pacotes":
		command => "/usr/bin/apt update"
	    }


		  }



		 }

package{$pacotes:
	ensure => present
	}

user{"devops":
	ensure => present
    }














}
