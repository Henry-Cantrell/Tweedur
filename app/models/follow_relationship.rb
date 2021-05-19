class FollowRelationship < ApplicationRecord
    belongs_to :followed, class_name: 'User'
    belongs_to :follower, class_name: 'User'

    validates :followed_id, presence: true
    validates :follower_id, presence: true
    validates :accept_toggle, presence: true
    validates_uniqueness_of :followed_id, scope: [:follower_id]
end