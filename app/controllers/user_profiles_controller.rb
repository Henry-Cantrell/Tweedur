class UserProfilesController < ApplicationController
    def show
        @user = User.find(params[:id])

        #Determine if user accessing profile is current user for 
        #displaying the edit button

        @edit_profile_button = false

        if @user.id == current_user.id
            @edit_profile_button = true
        end

    end
end
