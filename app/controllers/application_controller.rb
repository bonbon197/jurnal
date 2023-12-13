class ApplicationController < ActionController::Base
    # before_action :redirect_signed_in_users

    private
    def redirect_signed_in_users
        redirect_to categories_path if user_signed_in?
    end
end
