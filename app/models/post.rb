class Post < ApplicationRecord
    belongs_to :creator, class_name: 'User'
    belongs_to :liked_post, class_name: 'Like', foreign_key: 'liked_post_id'
end