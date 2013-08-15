class tomcat7_rhel::tomcat7_manager_package {
  include tomcat7_rhel::params 

  package { "tomcat7-admin-webapps":
    ensure  => installed,
    require => [Package['tomcat7'], Yumrepo[$tomcat7_rhel::params::yumrepo]]
  }
}
