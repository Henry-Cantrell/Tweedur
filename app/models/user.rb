class User < ApplicationRecord
  has_many :created_posts, class_name: 'Post', foreign_key: 'creator_id'
  has_many :liked_posts, class_name: 'Like', foreign_key: 'liking_user_id'
  has_many :followed_users, class_name: 'FollowRelationship', foreign_key: 'followed_id'
  has_many :following_users, class_name: 'FollowRelationship', foreign_key: 'follower_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end