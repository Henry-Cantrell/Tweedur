class HomepageController < ApplicationController
    def show
        @user = current_user
    end

    def create
    end

    private

    def post_params
    end
end
