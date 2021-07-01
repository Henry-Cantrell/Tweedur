class CommentsController < ApplicationController

def create
	@new_comment = Comment.new(comment_params)

	if @new_comment.save!
		redirect_back(fallback_location: root_path)
	end
end

def destroy
	@trash_comment = Comment.find_by(id: params[:delete_comment][:comment_id])
	
	if @trash_comment.destroy!
		redirect_back(fallback_location: root_path)
	end
end

private

	def comment_params
		params.require(:comment).permit(:body, :author_id, :post_id)
	end

end
