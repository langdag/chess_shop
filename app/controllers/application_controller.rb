class ApplicationController < ActionController::Base
    def authenticate_admin!
        authenticate_user!
        redirect_to new_user_session_path, status: :unauthorized unless current_user.admin?
    end
end
