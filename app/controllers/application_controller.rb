class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :notifications_setup

    def notifications_setup
        @follow_requests_length = current_user.following_users.where(accept_toggle: false).length
    end

end