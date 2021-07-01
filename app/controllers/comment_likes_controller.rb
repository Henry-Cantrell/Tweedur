class CommentLikesController < ApplicationController

	def create
		@new_comment_like = CommentLike.new(comment_like_params)

		if @new_comment_like.save!
			redirect_back(fallback_location: root_path)
		end
	end

	def destroy
		@trash_comment_like = CommentLike.find_by(comment_like_params)

		if @trash_comment_like.destroy!
			redirect_back(fallback_location: root_path)
		end
	end

	private
	
	def comment_like_params
		params.require(:like_on_comment).permit(:comment_id, :comment_liker_id)
	end

end
