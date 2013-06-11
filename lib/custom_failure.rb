class CustomFailure < Devise::FailureApp
   def redirect_url
 
      new_user_registration_path
    
  end
  def respond
    if http_auth?
      http_auth
    else
      store_location!
      flash[:alert] = i18n_message unless flash[:notice]
      redirect_to root_url
    end
  end
end