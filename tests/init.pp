# The baseline for module testing used by Puppet Labs is that each manifest
# should have a corresponding test manifest that declares that class or defined
# type.
#
# Tests are then run by using puppet apply --noop (to check for compilation
# errors and view a log of events) or by fully applying the test in a virtual
# environment (to compare the resulting system state to the desired state).
#
# Learn more about module testing here:
# http://docs.puppetlabs.com/guides/tests_smoke.html
#
class { 'beanstalkd':
  listen_addr      => "127.0.0.1",
  listen_port      => "11300",
  enable_binlog    => false,
  binlog_directory => "/var/lib/beanstalkd",
  package_ensure   => "present",
  service_ensure   => "running",
  service_enable   => true,
  user             => "beanstalkd",
  max_job_size     => "65535",
}
