
class PasswordsController < ApplicationController
    def check
        @userid = params[:userid]
        @password = params[:password]

        if @userid != @password && @password =~ /\d/
            flash.now[:notice] = "Credentials are acceptable."
        else
            flash.now[:notice] ="User ID and password cannot match and password must contain a number."
        end
        render 'check.html.erb'
    end
end
