class UserProfilesController < ApplicationController
    def show
        @user = User.find(params[:id])
        @followed_id = params[:id]
        @user_bio = nil

        unless @user.bio == nil
            @user_bio = @user.bio.description
        end

        @follow_relationship = FollowRelationship.where(followed_id: @followed_id, follower_id: current_user.id)

        if @follow_relationship.empty?
            @follow_relationship = nil
        end

        @edit_profile_button = false

        if @user.id == current_user.id
            @edit_profile_button = true
        end

    end

end
