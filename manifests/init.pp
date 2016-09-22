# Install an rpm gpg key from a URL
define rpmgpgkey($ensure, $url) {
  case $ensure {
    'present': {
      exec { "rpmgpgkey present ${name}":
        command => "/usr/bin/wget -q ${url}/${name} -O /etc/pki/rpm-gpg/${name}",
        creates => "/etc/pki/rpm-gpg/${name}",
      }
    }
    'absent': {
      exec { "rpmgpgkey absent ${name}":
        command => "/bin/rm /etc/pki/rpm-gpg/${name}",
        unless  => "/bin/ls /etc/pki/rpm-gpg/ | /bin/grep ${name} | /usr/bin/wc -l",
      }
    }
    default: {
      fail "Invalid 'ensure' value '${ensure}' for rpmgpgkey"
    }
  }
}
