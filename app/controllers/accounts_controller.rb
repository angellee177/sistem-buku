class AccountsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to new_session_path, notice: 'Berhasil membuat Akun Baru.'
        else
            render 'new'
        end
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :username, :password)
    end
end