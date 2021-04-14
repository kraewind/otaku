class ApplicationController < ActionController::Base
    def logged_in?
        !!session[:user_id]
    end

    def redirect_if_not_logged_in
        redirect_to signin_path if !logged_in?
    end

end
