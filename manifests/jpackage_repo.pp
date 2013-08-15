class tomcat7_rhel::jpackage_repo {
  yumrepo { 'jpp6':
    descr       => "JPackage JPP 6 repo - fixed",
    baseurl     => "http://cobbler/cobbler/repo_mirror/jpp6-beta",
    enabled     => 1,
    gpgcheck    => 0,
    includepkgs => 'apache-commons* ecj3 jpackage-utils tomcat7*'
  }

  yumrepo { 'jpackage':
    descr    => "JPackage project",
    # If the mirror below fails, try another mirror (http://www.jpackage.org/mirroring.php)
    baseurl  => "ftp://jpackage.hmdc.harvard.edu/JPackage/6.0/generic/free/",
    enabled  => 0,
    gpgcheck => 1,
    gpgkey   => "http://www.jpackage.org/jpackage.asc",
  }
}
