class DiscoverPagesController < ApplicationController

    def show
        @users = User.where.not(id: current_user.id)
    end

end
