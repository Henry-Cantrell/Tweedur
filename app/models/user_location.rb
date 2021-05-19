class UserLocation < ApplicationRecord
    belongs_to :user
    
    validates :user_id, presence: true
    validates :location, presence: true, length: { minimum: 1 }
end
