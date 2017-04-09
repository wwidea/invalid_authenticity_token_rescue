module InvalidAuthenticityTokenRescue
  module RescueFromInvalidAuthenticityToken
    extend ActiveSupport::Concern
    
    included do
      rescue_from ActionController::InvalidAuthenticityToken, with: :invalid_authenticity_token
    end
    
    protected
    
    def invalid_authenticity_token(exception)
      ExceptionNotifier.notify_exception(exception, env: request.env)
      flash[:warning] = 'Your session has expired, please log in again'
      redirect_to new_session_path
    end
  end
end
