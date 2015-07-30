require 'spec_helper'
describe 'beanstalkd' do

  context 'with defaults for all parameters' do
    let(:facts) {
      {
      :osfamily               => 'RedHat',
      :operatingsystem        => 'CentOS',
      :operatingsystemrelease => '6.5'
      }
    }
    it { should contain_class('beanstalkd::install') }
  end


end
