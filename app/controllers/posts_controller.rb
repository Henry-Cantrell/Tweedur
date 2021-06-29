class PostsController < ApplicationController

    def create
        @user = current_user
        @new_post = @user.created_posts.build(post_params)

        if @new_post.save!
            redirect_to root_path
        end
    end

    def destroy
        @trash_post = current_user.created_posts.find_by(delete_post_params)

        if @trash_post.destroy!
            redirect_back(fallback_location: root_path)
        end
    end

    private

    def post_params
        params.require(:new_post).permit(:body, :creator_id)
    end

    def delete_post_params
        params.require(:delete_post).permit(:id)
    end

end
