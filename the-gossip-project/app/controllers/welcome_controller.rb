class WelcomeController < ApplicationController
    def potin
        @user = User.find(params[:first_name])
        puts "#{params}"
    end
end
