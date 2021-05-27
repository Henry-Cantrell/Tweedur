class UserProfilesController < ApplicationController
    def show
        @user = User.find(params[:id])

        #Uses devise to determine if current user is 

        @edit_profile_button = false

        if @user.id == current_user.id
            @edit_profile_button = true
        end

    end
end
