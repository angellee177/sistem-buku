class SessionsController < ApplicationController
    def new
    end

    def create
        username = params[:username]
        password = params[:password]
        # Mengecek apakah ada data User dengan nama Username
        # yang dimasukkan
        user = User.find_by(username: username)
        if user
            if user.authenticate(password)
                session[:user_id] = user.id
                redirect_to books_path, notice: 'Anda Berhasil Login.'
            else
                redirect_to new_session_path, notice: 'Username atau Password anda Salah.'
            end  
        else
                redirect_to new_session_path, notice: 'Username tidak terdaftar.'
        end
    end

    # untuk fungsi 'Log Out'
    def destroy
        session[:user_id] = nil
        redirect_to new_session_path, notice: 'kamu telah Log Out'
    end
end