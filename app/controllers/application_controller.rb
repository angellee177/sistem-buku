class ApplicationController < ActionController::Base  
    protect_from_forgery with: :exception
    
    helper_method :current_user

    def current_user
        if session[:user_id]
            User.find(session[:user_id])
        else
            nil
        end
    end

    # Check if User already Login or not
    def user_signed_in?
        if current_user
            true
        else
            redirect_to new_session_path, notice: 'Silakan Login Terlebih Dahulu'
            return false
        end
    end
end
