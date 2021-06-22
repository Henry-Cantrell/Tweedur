class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :notifications_setup

    def notifications_setup
        unless current_user.nil?
            @follow_requests = current_user.following_users.where(accept_toggle: false)
            @follow_requests_length = current_user.following_users.where(accept_toggle: false).length
        end
    end

    def accept_notif
        @follow_request_accept = FollowRelationship.find_by(id: params[:id])
        @follow_request_toggle = @follow_request_accept.update(accept_toggle:true)

        if @follow_request_toggle.save!
            redirect_to root_path
        end
    end

    def decline_notif
        @follow_request_decline = FollowRelationship.find_by(id: params[:id])

        if @follow_request_decline.destroy!
            redirect_to root_path
        end
    end

end