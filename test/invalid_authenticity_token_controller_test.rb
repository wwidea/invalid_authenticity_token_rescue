require 'test_helper'

class InvalidAuthenticityTokenControllerTest < ActionDispatch::IntegrationTest
  class User
    def id
      1
    end
  end
  
  test 'should rescue and redirect to new session path' do
    patch user_path(User.new)
    assert_redirected_to new_session_path
  end
end
