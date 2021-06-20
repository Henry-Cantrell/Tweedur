class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :notifications_setup

    def notifications_setup
        unless current_user.nil?
            @follow_requests = current_user.following_users.where(accept_toggle: false)
            @follow_requests_length = current_user.following_users.where(accept_toggle: false).length
        end
    end

end