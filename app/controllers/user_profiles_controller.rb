class UserProfilesController < ApplicationController
    def show
        @user_email = current_user.email
    end
end
