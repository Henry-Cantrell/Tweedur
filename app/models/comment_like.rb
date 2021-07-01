class CommentLike < ApplicationRecord
	belongs_to :comment_liker, class_name: 'User'
	belongs_to :comment, class_name: 'Comment'

end
