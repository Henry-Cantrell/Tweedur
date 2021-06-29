class HomePagesController < ApplicationController
    
    def show
        @user = current_user
        @followed_user_posts = @user.followed_users.where(accept_toggle:true)
        @following_user_posts = @user.following_users.where(accept_toggle:true)
    end

end
