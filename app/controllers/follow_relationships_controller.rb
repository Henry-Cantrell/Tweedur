class FollowRelationshipsController < ApplicationController

    def create
        @new_follow_relationship = FollowRelationship.new(fr_params)

        if @new_follow_relationship.save!
            redirect_back(fallback_location: root_path)
        end

    end

    def destroy
    end

    private

    def fr_params
        params.permit(:follower_id, :followed_id, :accept_toggle)
    end


end
