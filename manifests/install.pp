class nessus::install inherits nessus {

  if($nessus::manage_package)
  {
    package { $nessus::params::package_name:
      ensure => $nessus::package_ensure,
    }
  }

}
