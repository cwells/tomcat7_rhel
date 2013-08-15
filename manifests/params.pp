class tomcat7_rhel::params {
  $yumrepo          = 'jpp6'
  $application_root = '/usr/share/tomcat7/webapps'
  $tomcat_user      = 'nobody'
  $tomcat_port      = 8090
}