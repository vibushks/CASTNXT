class GauthcontrollerController < ApplicationController
  def handle
    
    puts "Hello"
    allusers = User.all
    puts allusers
    puts "User end"
    if user = authenticate_with_google
      puts "Hello1"
      #cookies.signed[:user_id] = user.id
      redirect_to users_url
    else
      puts "Hello2"
      redirect_to gforms_url, alert: 'authentication_failed'
    end
  end
  
  private
    def authenticate_with_google
      puts "Auths"
      id_token = flash[:google_sign_in]["id_token"]
      #puts id_token
      if id_token
        #puts id_token
        user_google = GoogleSignIn::Identity.new(id_token)
        user = User.where(token: user_google.user_id)
        puts "user_id"
        name = user_google.name
        email = user_google.email_address
        if User.exists?(:email => email)
          true
        else
          user = User.create(name:name, email:email, token:id_token, userType:"default")
          puts "After create"
          user.save
          
          puts user
          user
        end
          
      elsif error = flash[:google_sign_in][:error]
        logger.error "Google authentication error: #{error}"
        nil
      end
    end
    
  
end