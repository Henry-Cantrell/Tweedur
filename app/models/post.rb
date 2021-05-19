class Post < ApplicationRecord
    belongs_to :creator, class_name: 'User'
    has_many :comments
    has_many :likes

    validates :creator_id, presence: true
    validates :body, presence: true, length: { minimum: 1 }
    validates :title, presence: true, length: { minimum: 1 }
    validates_uniqueness_of :title
    validates_uniqueness_of :body
    validates_associated :comments
end