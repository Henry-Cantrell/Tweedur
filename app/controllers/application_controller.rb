class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :notifications_display_navbar
    before_action { flash.clear }

    def notifications_display_navbar
        unless current_user.nil?
            @follow_requests = FollowRelationship.where(accept_toggle: false, followed_id: current_user.id)
            @follow_requests_length = FollowRelationship.where(accept_toggle: false, followed_id: current_user.id).length
        end
    end

end