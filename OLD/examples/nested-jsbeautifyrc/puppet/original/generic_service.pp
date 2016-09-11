# Define quantum::generic_service
#
# This class implements basic ceilomer services.
# It is derived from https://github.com/stackforge/puppet-quantum/blob/master/manifests/generic_service.pp
#
define quantum::generic_service (

  $package_name              = '',
  $package_ensure            = 'present',

  $service_name              = '',
  $service_ensure            = 'running',
  $service_enable            = true,

  $config_file_path          = undef,
  $config_file_notify        = 'default',
  $config_file_require       = 'default',
  $config_file_replace       = undef,
  $config_file_source        = undef,
  $config_file_template      = undef,
  $config_file_content       = undef,
  $config_file_options_hash  = { },

  $config_dir_path           = '/etc/quantum',
) {

  $distro_prefix = $::osfamily ? {
    RedHat => 'openstack-',
    Debian => '',
  }

  $manage_package_name = pickx($package_name, "${distro_prefix}${name}")
  $manage_service_name = pickx($service_name, "${distro_prefix}${name}")
  $manage_config_file_path = pickx($config_file_path, "${config_dir_path}/${name}.conf")
  $manage_config_file_content = default_content($config_file_content, $config_file_template)
  $manage_config_file_notify  = $config_file_notify ? {
    'default'       => "Service[${name}]",
    ''              => undef,
    default         => $config_file_notify,
  }
  $manage_config_file_require  = $config_file_require ? {
    'default'       => "Package[${name}]",
    default         => $config_file_require,
  }

  if $package_ensure == 'absent' {
    $manage_service_enable = undef
    $manage_service_ensure = stopped
    $config_file_ensure = absent
  } else {
    $manage_service_enable = $service_enable ? {
      ''      => undef,
      'undef' => undef,
      default => $service_enable,
    }
    $manage_service_ensure = $service_ensure ? {
      ''      => undef,
      'undef' => undef,
      default => $service_ensure,
    }
    $config_file_ensure = present
  }

  if ($manage_package_name) {
    package { $name:
      ensure => $package_ensure,
      name   => $manage_package_name,
    }
  }

  if ($manage_service_name) {
    service { $name:
      ensure    => $manage_service_ensure,
      name      => $manage_service_name,
      enable    => $manage_service_enable,
      require   => Package[$manage_package_name],
    }
  }

  if $config_file_source
  or $manage_config_file_content {
    file { "${name}.conf":
      ensure  => $config_file_ensure,
      path    => $manage_config_file_path,
      mode    => $config_file_mode,
      owner   => $config_file_owner,
      group   => $config_file_group,
      source  => $config_file_source,
      content => $manage_config_file_content,
      notify  => $manage_config_file_notify,
      require => $manage_config_file_require,
    }
  }

}
