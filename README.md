# rpmgpgkey

#### Table of Contents

1. [Overview](#overview)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Install an RPM-GPG-Key from a URL. Useful when using the `yumrepo` resource type to
configure a yum repo with a GPG key on a web server that you need to retrieve and
store locally in `/etc/pki/rpm-gpg/`.

## Usage

```puppet
rpmgpgkey { 'RPM-GPG-KEY-CentOS-7':
  ensure => 'present',
  url    => 'http://www.mirrorservice.org/sites/mirror.centos.org/RPM-GPG-KEY-CentOS-7',
}

## Limitations

This module is very simple and has some hard-coded paths. It was developed on CentOS/Fedora
but may need tweaking for other platforms.

## Development

Pull requests welcome.
