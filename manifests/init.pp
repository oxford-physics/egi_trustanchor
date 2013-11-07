class egi_trustanchor {
 tag("repo")  
 yumbase::ai121yumrepo {'EGI-trustanchors':
    baseurl  => 'http://repository.egi.eu/sw/production/cas/1/current/',
    descr    => 'EGI Trustanchor',
    enabled  => '1',
    gpgkey => 'absent',
    gpgcheck   => '0',
    priority => '20',
  }
  
  package { "ca-policy-egi-core":
    ensure => installed,
  }
}
