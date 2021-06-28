class FollowRelationshipsController < ApplicationController

    def create
        @new_follow_relationship = FollowRelationship.new(fr_params)

        if @new_follow_relationship.save!
            redirect_back(fallback_location: root_path)
        end

    end

    def destroy
        @destroy_follow_relationship = FollowRelationship.find_by(followed_id: params[:followed_id], follower_id: params[:follower_id] )

        if @destroy_follow_relationship.destroy
            redirect_back(fallback_location: root_path)
        end
    end

    private

    def fr_params
        params.permit(:follower_id, :followed_id, :accept_toggle)
    end

end
