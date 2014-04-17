class UserController < ApplicationController
  respond_to :json

  def all
      respond_with(User.all)
  end
end
