class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from_invalid_authenticity_token
end
