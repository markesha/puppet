node 'default' {
include '::mysql::server'
mysql::db { 'test_db':
  user     => 'test_user',
  password => 'testuser',
  host     => 'localhost',
  grant    => ['SELECT', 'UPDATE', 'ALL'],
}
}



