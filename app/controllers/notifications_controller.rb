class NotificationsController < ApplicationController
    
    def create
        @follow_request = FollowRelationship.find(params[:id])

        if @follow_request.update(accept_toggle:true)
            redirect_to root_path
        end
    end
end
