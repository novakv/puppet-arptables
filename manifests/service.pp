class arptables::service {

  case $::operatingsystemmajrelease {
    '6': {
      $servicename = 'arptables_jf'
    }
    '7': {
      $servicename = 'arptables'
    }
  }  
  service { $servicename:
    ensure => $::arptables::service_ensure,
    enable => $::arptables::service_enable,
  }
}
