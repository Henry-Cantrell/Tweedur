class FollowRelationship < ApplicationRecord
    belongs_to :followed, class_name: 'User'
    belongs_to :follower, class_name: 'User'

    validates :followed_id, presence: true
    validates :follower_id, presence: true
    validates :accept_toggle, presence: true
    validates_uniqueness_of :followed_id, scope: [:follower_id]

    def find_followed_user_posts
        #run get_users_from_folllower_ids, then put the extracted posts into an array
        #which will be looped in views
    end

    private 

    def get_follower_ids
        #return [array of IDs]
    end

    def get_users_from_follower_ids
        #return [array of users via looping get_follower_ids]
    end

    #loop follow relationship, extract follower ID, find users by follower ID for each user
        #in follow relationship where accept_toggle = true and then generate a user collection array
        #from that list, then loop that list and extract/display all posts from those users in views
end