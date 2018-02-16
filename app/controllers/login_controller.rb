class LoginController < ApplicationController
    def login
        render 'login/login'
    end
    def home
        render 'login/home'
    end
end
