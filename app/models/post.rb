class Post < ApplicationRecord
    belongs_to :creator, class_name: 'User'
    has_many :comments
    has_many :likes, foreign_key: 'liked_post_id'

    validates :creator_id, presence: true
    validates :body, presence: true, length: { minimum: 1 }
    validates_uniqueness_of :body
    validates_associated :comments
end