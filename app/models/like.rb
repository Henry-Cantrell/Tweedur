class Like < ApplicationRecord
    belongs_to :liking_user, class_name: 'User'
    belongs_to :liked_post, class_name: 'Post'

    # Prevents duplicate likes on same post
    validates_uniqueness_of :liking_user_id, scope: [:liked_post_id]
end