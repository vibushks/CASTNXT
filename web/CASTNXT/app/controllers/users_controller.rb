class UsersController < ApplicationController
  def home
  end

  def registration
  end

  def profile
  end

  def applicants
    @users = User.all
  end
end
