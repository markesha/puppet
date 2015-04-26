class jbapp {

$deploy_path = '/opt/jboss-as-7.1.1.Final/standalone/deployments'

exec {"temp_fold":
 command => "/bin/mkdir -p /tmp/testweb",
 creates => "/tmp/testweb",
}

exec{ 'get_app':
 command => "/usr/bin/wget http://www.cumulogic.com/download/Apps/testweb.zip -O /tmp/testweb.zip",
 creates => "/tmp/testweb.zip",
}

file { 'got_app':
 mode => 0755,
 path => "/tmp/testweb.zip",
 require => Exec["get_app"],
}

exec {"unzip_app":
 command => "/usr/bin/unzip /tmp/testweb.zip -d {$deploy_path}",
 replace => true,
 require => Exec["got_app"],
}


}

