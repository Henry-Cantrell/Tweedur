class Like < ApplicationRecord
    belongs_to :liking_user, class_name: 'User'
    belongs_to :liked_post, class_name: 'Post'

    validates :liking_user_id, presence: true
    validates :liked_post_id, presence: true
    validates_uniqueness_of :liking_user_id, scope: [:liked_post_id]
end