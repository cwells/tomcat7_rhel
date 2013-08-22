class tomcat7_rhel {
  include tomcat7_rhel::params
  include tomcat7_rhel::jpackage_repo

  package { 'java-1.7.0-openjdk':
    ensure => latest
  }

  package { 'java-1.7.0-openjdk-devel':
    ensure  => latest,
    require => Package['java-1.7.0-openjdk']
  }

  package { 'tomcat7':
    ensure  => installed,
    require => [Package['java-1.7.0-openjdk'], Yumrepo[$tomcat7_rhel::params::yumrepo]]
  }

  file { $tomcat7_rhel::params::application_root:
    ensure => directory
  }

  service { 'tomcat7': 
    ensure  => 'running',
    require => Package['tomcat7']
  }
}
