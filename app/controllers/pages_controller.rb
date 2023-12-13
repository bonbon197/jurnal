class PagesController < ApplicationController
    def landing
        if user_signed_in?
            redirect_to categories_path
        end
    end
end
