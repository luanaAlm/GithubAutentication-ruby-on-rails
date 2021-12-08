#espera a chamada vina do git hub
class callbacksController < Devise::OmniauthCallbacksControler
    def github
        @user = User.from_omniauth(request.env['omniauth.auth'])
        sing_in_and_redirect @user
    end
end