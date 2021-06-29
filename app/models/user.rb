class User < ApplicationRecord
  # Associations for post ownership
  has_many :created_posts, class_name: 'Post', foreign_key: 'creator_id'
  has_many :liked_posts, class_name: 'Like', foreign_key: 'liking_user_id'
  # Associations for the follow relationship
  has_many :followed_users, class_name: 'FollowRelationship', foreign_key: 'followed_id'
  has_many :following_users, class_name: 'FollowRelationship', foreign_key: 'follower_id'
  # Associations for profile data
  has_one :bio, class_name:'UserBio', foreign_key: 'user_id'
  has_one :user_join_date
  has_one :user_location
  # Associations for comment ownership on post
  has_many :post_comments, class_name: 'Comment', foreign_key: 'author_id'
  # Association for avatar
  has_one_attached :avatar

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # Include omniauth interface modules for Facebook
  devise :omniauthable, omniauth_providers: %i[facebook]

  # Omniauth method for user lookup/creation based on Facebook data
  def self.from_omniauth(auth)
    name_split = auth.info.name.split(" ")
    user = User.where(email: auth.info.email).first
    user ||= User.create!(provider: auth.provider, uid: auth.uid, last_name: name_split[0], first_name: name_split[1], email: auth.info.email, password: Devise.friendly_token[0, 20])
      user
  end

  validates_associated :created_posts
  validates_associated :followed_users
  validates_associated :following_users
  validates_associated :user_bio
  validates_associated :user_join_date
  validates_associated :user_location
  validates_associated :post_comments
end