class FollowRelationship < ApplicationRecord
    belongs_to :followed, class_name: 'User'
    belongs_to :follower, class_name: 'User'

    # Prevents duplicate follows on same user
    validates_uniqueness_of :followed_id, scope: [:follower_id]
end