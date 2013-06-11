class ChatsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.find(:all); 
    
  end
  


  def create
 if  params[:user].present?
    
    @channel = "/messages/private/#{params[:user]}"
    @sender_channel = "/messages/private/#{current_user.name}"
    @message = { :name => current_user.name, :msg => params[:message] }
   
  else
   
    @channel = "/messages/public"
    @message = { :username => session[:username], :msg => params[:message] }
     respond_to do |format|
    format.js
   end
  end
    
 end


end
