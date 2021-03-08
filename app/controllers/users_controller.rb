class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @watchlist = current_user.watchlist_animes
  end
end
