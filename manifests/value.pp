define sysctl::value(
  $value
){
  require sysctl
  exec{"exec_sysctl_$name":
    command => "sysctl $name=$value",
    refreshonly => true,
  }
  sysctl{$name:
    val => $value,
    notify => Exec["exec_sysctl_$name"],
  }
}
