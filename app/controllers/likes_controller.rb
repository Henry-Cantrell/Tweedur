class LikesController < ApplicationController

    def create
        @like = Like.new(like_params)

        if @like.save!
            redirect_back(fallback_location: root_path)
        end
    end

    def destroy
        @like = Like.find_by(like_params)

        if @like.destroy!
            redirect_back(fallback_location: root_path)
        end
    end

    private

    def like_params
        params.require(:like).permit(:liking_user_id, :liked_post_id)
    end

end
