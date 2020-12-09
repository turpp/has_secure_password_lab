class SessionsController < ApplicationController
    def create
        if !params[:user][:name].blank? 
        @user = User.find_by(name: params[:user][:name])
        return head(:forbidden) unless @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to homepage_path(@user)
        else
            redirect_to signup_path
        end
    end
end