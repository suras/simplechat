class PublicController < ApplicationController
  def index
    @users = User.find(:all)
  end
end
