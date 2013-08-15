class tomcat7_rhel::jpackage_repo {
  yumrepo { "jpp6":
    descr       => "JPackage JPP 6 repo - fixed",
    baseurl     => "http://cobbler/cobbler/repo_mirror/jpp6-beta",
    enabled     => 1,
    gpgcheck    => 0,
    includepkgs => 'apache-commons* ecj3 jpackage-utils tomcat7*'
  }
}
