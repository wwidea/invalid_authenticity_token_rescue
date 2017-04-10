module InvalidAuthenticityTokenRescue
  class Railtie < Rails::Railtie
    initializer "invalid_authenticity_token_rescue" do |app|
      ActiveSupport.on_load :action_controller do
        ActionController::Base.include InvalidAuthenticityTokenRescue::RescueFromInvalidAuthenticityToken
      end
    end
  end
end
