class PostsController < ApplicationController

    def destroy
        @trash_post = current_user.created_posts.find_by(id: params[:delete_post][:id])

        if @trash_post.destroy!
            redirect_back(fallback_location: root_path)
        end
    end

    def create
        @user = current_user
        @new_post = @user.created_posts.build(post_params)

        if @new_post.save!
            redirect_to root_path
        end
    end

end
