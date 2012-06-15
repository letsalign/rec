class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

def twitter
#raise request.env["omniauth.auth"].to_yaml
 user = User.find_for_twitter_oauth(request.env["omniauth.auth"], current_user)
  logger.debug"#{user}"
    if user.persisted?
      sign_in(:user,user)
    #  session[:user_id] = user.id
    else
      #session["devise.facebook_data"] = request.env["omniauth.auth"]
     # redirect_to new_user_registration_url
    end
   redirect_to root_path
  end
  
  def failure
      redirect_to root_path
  end
  

end
