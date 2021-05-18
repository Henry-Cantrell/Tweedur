class User < ApplicationRecord
  # Associations for post ownership
  has_many :created_posts, class_name: 'Post', foreign_key: 'creator_id'
  has_many :liked_posts, class_name: 'Like', foreign_key: 'liking_user_id'
  # Associations for the follow relationship
  has_many :followed_users, class_name: 'FollowRelationship', foreign_key: 'followed_id'
  has_many :following_users, class_name: 'FollowRelationship', foreign_key: 'follower_id'
  # Associations for profile data
  has_one :user_bio
  has_one :user_join_date
  has_one :user_location
  # Associations for comment ownership on post
  has_many :post_comments, class_name: 'Comment', foreign_key: 'author_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end