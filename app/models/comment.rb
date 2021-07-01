class Comment < ApplicationRecord
    belongs_to :author, class_name: 'User'
    belongs_to :post
    has_many :comment_likes, class_name: 'CommentLikes', foreign_key: 'comment_id'

    validates :post_id, presence: true
    validates :author_id, presence: true
    validates :body, presence: true, length: { minimum: 1 }
end
