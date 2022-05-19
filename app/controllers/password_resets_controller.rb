class PasswordResetsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
           PasswordMailer.with(user: @user).reset.deliver_now
           redirect_to root_path, notice: "If account exists, we will send steps to reset your password on the mail."
        else
            redirect_to root_path, notice: "If account exists, we will send steps to reset your password on the mail."
        end  
    end
end