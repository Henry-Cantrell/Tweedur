class DiscoverPagesController < ApplicationController

    def index
        @users = User.all
    end

end
