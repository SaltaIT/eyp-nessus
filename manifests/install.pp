class nessus::install inherits nessus {

  if($nessus::manage_package)
  {
    if($package_url!=undef)
    {

      exec { 'eyp-nessus which wget':
        command => 'which wget',
        unless  => 'which wget',
      }

      exec { 'wget nessus pkg':
        command => "wget ${package_url} -O ${srcdir}/nessus.${nessus::params::}",
      }

    }

    package { $nessus::params::package_name:
      ensure => $nessus::package_ensure,
    }
  }

}
