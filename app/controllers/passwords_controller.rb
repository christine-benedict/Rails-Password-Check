
class PasswordsController < ApplicationController
    def check
        @userid = params[:userid]
        @password = params[:password]

        if @userid == @password
            # && /0-9/.match(params[:password]) == true
            flash.now[:notice] ="User ID and password cannot match and password must contain a number."
        else
            flash.now[:notice] = "Credentials are acceptable."
        end
        render 'check.html.erb'
    end
end
