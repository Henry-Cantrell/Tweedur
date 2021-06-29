class HomePagesController < ApplicationController
    
    def show
        @user = current_user
        @follow_relationships = @user.followed_users.where(accept_toggle:true)
    end

end
