require 'rails_helper'

RSpec.describe FollowRelationship, :type => :model do
    it "can follow other users" do
        user = User.create(id:1, email:'test@test.com', password:'test123')
        user2 = User.create(id:2, email:'test2@test.com', password:'test1234')

        expect(FollowRelationship.create(followed_id:user.id, follower_id:user2.id)).to be_truthy
    end

    it "can register follow request acceptance" do
        user1 = User.create(id:1, email:'test@test.com', password:'test123')
        user2 = User.create(id:2, email:'test2@test.com', password:'test123')
        newFollow = FollowRelationship.create(followed_id:user1.id, follower_id: user2.id, accept_toggle:false)

        expect(newFollow.update(accept_toggle:true)).to be_truthy
    end

    it "can register follow request declines" do
        user1 = User.create(id:1, email:'test@test.com', password:'test123')
        user2 = User.create(id:2, email:'test2@test.com', password:'test123')
        newFollow = FollowRelationship.create(followed_id:user1.id, follower_id: user2.id, accept_toggle:false)

        expect(newFollow.destroy).to be_truthy
    end
end