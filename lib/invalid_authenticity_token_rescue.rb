require 'invalid_authenticity_token_rescue/railtie'

module InvalidAuthenticityTokenRescue
  module RescueFromInvalidAuthenticityToken
    extend ActiveSupport::Concern
    
    module ClassMethods
      def rescue_from_invalid_authenticity_token
        rescue_from ActionController::InvalidAuthenticityToken, with: :invalid_authenticity_token
      end
    end
    
    protected
    
    def invalid_authenticity_token(exception)
      ExceptionNotifier.notify_exception(exception, env: request.env)
      flash[:warning] = 'Your session has expired, please log in again'
      redirect_to new_session_path
    end
  end
end
