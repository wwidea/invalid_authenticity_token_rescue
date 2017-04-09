class UsersController < ApplicationController
  def update
    raise ActionController::InvalidAuthenticityToken
  end
end
