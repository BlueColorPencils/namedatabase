class UsersController < ApplicationController


  def favorites
    @user_favorites = current_user.favorites
  end
end
