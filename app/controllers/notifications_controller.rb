class NotificationsController < ApplicationController
    
    def create
        @follow_request = FollowRelationship.find(params[:id])

        if @follow_request.update(accept_toggle:true)
            redirect_back(fallback_location: root_path)
        end
    end

    def destroy
        @follow_request = FollowRelationship.find(params[:id])

        if @follow_request.destroy!
            redirect_back(fallback_location: root_path)
        end
    end
end
