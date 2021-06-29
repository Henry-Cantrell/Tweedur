class Like < ApplicationRecord
    belongs_to :liking_user, class_name: 'User'
    belongs_to :post_liked, class_name: 'Post'

    validates :liking_user_id, presence: true
    validates :liked_post_id, presence: true
end