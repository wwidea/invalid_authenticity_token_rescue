require 'test_helper'

class ConfigurationTest  < ActiveSupport::TestCase
  test 'should set redirect_path configuration' do
    InvalidAuthenticityTokenRescue.configure do |config|
      config.redirect_path = 'testing'
    end
    assert_equal 'testing', InvalidAuthenticityTokenRescue.configuration.redirect_path
    InvalidAuthenticityTokenRescue.remove_instance_variable(:@configuration)
  end
end
