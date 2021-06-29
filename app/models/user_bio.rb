class UserBio < ApplicationRecord
    belongs_to :user

    validates :user_id, presence: true
    validates :description, presence: true, length: { minimum: 1 }

end
