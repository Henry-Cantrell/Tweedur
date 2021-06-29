class UserProfilesController < ApplicationController
    def show
        @user = User.find(params[:id])
        @followed_id = params[:id]

        @follow_relationship = FollowRelationship.where(followed_id: @followed_id, follower_id: current_user.id)

        if @follow_relationship.empty?
            @follow_relationship = nil
        end

        @edit_profile_button = false

        if @user.id == current_user.id
            @edit_profile_button = true
        end

    end

    def update
        @user = User.find(params[:id])

        if @user.user_bio.update!(bio_params)
            redirect_back(fallback_location: root_path)
        end

    end

    private

    def bio_params
        params.require(:bio).permit(:bio)
    end

end
