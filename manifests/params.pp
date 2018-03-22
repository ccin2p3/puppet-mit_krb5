# Class: mit_krb5::params
#
class mit_krb5::params {

  if $::operatingsystemmajrelease {
    $os_maj_release = $::operatingsystemmajrelease
  } else {
    $os_versions    = split($::operatingsystemrelease, '[.]')
    $os_maj_release = $os_versions[0]
  }

  case $os_maj_release {
    '7' : {
      $includedir = ['/etc/krb5.conf.d/', ]
    }
    default: { $includedir = [] }
  }
}
