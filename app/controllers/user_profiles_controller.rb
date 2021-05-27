class UserProfilesController < ApplicationController
    def show
        @user = User.find(params[:id])

        #Determine if user accessing profile is current user for 
        #displaying the edit button

        @current_user = false

        if @user.id == current_user.id
            @current_user = true
        end

        @user_posts = 
    end
end
