class HomepageController < ApplicationController
    def show
        @user = current_user
    end

    def create
        @user = current_user
        @new_post = @user.created_posts.build(post_params)

        if @new_post.save
            redirect_to root_path
        end
    end

    private

    def post_params
        params.require(post).permit(:body, :creator_id)
    end
end
