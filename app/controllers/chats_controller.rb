class ChatsController < ApplicationController
  
  
  def index
    
    
  end

  def create
    @channel = "/messages/public"
    @message = { :msg => params[:message] }
     respond_to do |format|
    format.js
  end
    
  end


end
