class SessionsController < ApplicationController

#login user method
    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end

#logout user method
    def destroy
        session.delete :user_id
        head :no_content
    end

end
