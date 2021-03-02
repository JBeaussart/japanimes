class UsersController < ApplicationController
  def show
    # c'est un peu overkill mais ça reste bon
    @user = User.find(current_user.id)
  end
end
