# Class: chronos::params
#
# This class defines default parameters used by the main module class chronos
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to chronos class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class chronos::params {

  ### Application related parameters

  $package = $::operatingsystem ? {
    default => 'chronos',
  }

  $service = $::operatingsystem ? {
    default => 'chronos',
  }

  $service_status = $::operatingsystem ? {
    default => true,
  }

  $process = $::operatingsystem ? {
    default => 'chronos',
  }

  $process_args = $::operatingsystem ? {
    default => '',
  }

  $process_user = $::operatingsystem ? {
    default => 'chronos',
  }

  $config_dir = $::operatingsystem ? {
    default => '/etc/chronos',
  }

  $config_file_port = $::operatingsystem ? {
    default => '/etc/chronos/conf/http_port',
  }

  $config_file_hostname = $::operatingsystem ? {
    default => '/etc/chronos/conf/hostname',
  }

  $config_file_user = $::operatingsystem ? {
    default => '/etc/chronos/conf/user',
  }

  $config_file_cluster = $::operatingsystem ? {
    default => '/etc/chronos/conf/cluster_name',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_init = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => '/etc/default/chronos',
    default                   => '/etc/sysconfig/chronos',
  }

  $pid_file = $::operatingsystem ? {
    default => '/var/run/chronos.pid',
  }

  $data_dir = $::operatingsystem ? {
    default => '/etc/chronos',
  }

  $log_dir = $::operatingsystem ? {
    default => '/var/log/chronos',
  }

  $log_file = $::operatingsystem ? {
    default => '/var/log/chronos/chronos.log',
  }

  $port = '4400'
  $protocol = 'tcp'

  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template_port = 'chronos/http_port.erb'
  $template_hostname = 'chronos/hostname.erb'
  $template_user = 'chronos/user.erb'
  $template_cluster = 'chronos/cluster_name.erb'
  $options = ''
  $service_autorestart = true
  $version = 'present'
  $absent = false
  $disable = false
  $disableboot = false
  $use_mesos_repo = true
  $hostname = 'localhost'
  $user = 'root'
  $cluster_name = 'MESOS'

  ### General module variables that can have a site or per module default
  $monitor = false
  $monitor_tool = ''
  $monitor_target = $::ipaddress
  $firewall = false
  $firewall_tool = ''
  $firewall_src = '0.0.0.0/0'
  $firewall_dst = $::ipaddress
  $puppi = false
  $puppi_helper = 'standard'
  $debug = false
  $audit_only = false
  $noops = false

}
