define sysctl::value(
  $value
){
  sysctl{$name:
    val => $value,
    require => Package['procps'],
  } ~>
  exec{"exec_sysctl_$name":
    command => "sysctl $name='$value'",
    refreshonly => true,
  }
}
