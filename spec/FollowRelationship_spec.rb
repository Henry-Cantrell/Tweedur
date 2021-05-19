require 'rails_helper'

RSpec.describe FollowRelationship, :type => :model do
    it "can follow other users" do
        user = User.create(id:1, email:'test@test.com', password:'test123')
        user2 = User.create(id:2, email:'test2@test.com', password:'test1234')

        expect(FollowRelationship.create(followed_id:user.id, follower_id:user2.id)).to be_truthy
    end
end