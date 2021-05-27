class HomePagesController < ApplicationController
    def show
        @user = current_user
        @followed_users = @user.followed_users
        @followed_users_posts = nil
    end

    def create
        @user = current_user
        @new_post = @user.created_posts.build(post_params)

        if @new_post.save!
            redirect_to root_path
        end
    end

    private

    def post_params
        params.require(:new_post).permit(:body, :creator_id)
    end
end
