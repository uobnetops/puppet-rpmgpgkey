require 'spec_helper'
describe 'rpmgpgkey' do

  context 'with defaults for all parameters' do
    it { should contain_class('rpmgpgkey') }
  end
end
