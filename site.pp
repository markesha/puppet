node 'default' {

 include 'java'

 class { 'jboss':
  install             => 'source',
  version             => '7',
       }
 jboss::instance {'app':
        createuser => false,
        bindaddr   => '127.0.0.1',
        port       => '8080',
                 }

 include 'jboss'
 include 'nginx'
 include 'jbapp'
}

