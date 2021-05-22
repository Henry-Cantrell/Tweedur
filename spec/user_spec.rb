require 'rails_helper'

RSpec.describe User, :type => :model do
    it "can make a new user" do
        expect(User.new(email:'test@test.com', password:'test123')).to be_valid
    end

    it "can make a new post" do
        user = User.create(id:1, email:'test@test.com', password:'test123')

        expect(user.created_posts.build(id: 1, body:'test', creator_id:user.id)).to be_valid
    end

    it "can see users that were followed" do
        user = User.create(id:1, email:'test@test.com', password:'test123')

        expect(user.followed_users).to be_truthy
    end

    it "can see users that are following" do 
        user = User.create(id:1, email:'test@test.com', password:'test123')
    
        expect(user.following_users).to be_truthy
    end

    it "can make comments on posts" do
        user = User.create(id:1, email:'test@test.com', password:'test123')
        user.created_posts.create(id: 1, body:'test', creator_id:user.id)

        expect(user.post_comments.create(post_id:1, author_id:1)).to be_truthy
    end

    it "can make likes on posts" do
        user = User.create(id:1, email:'test@test.com', password:'test123')
        user.created_posts.create(id: 1, body:'test', creator_id:user.id)
        post = user.created_posts.first
        
        expect(Like.create(liked_post_id:post.id, liking_user_id:user.id)).to be_truthy
    end

    it "can retrieve user posts" do
        user = User.create(id:1, email:'test@test.com', password:'test123')
        user.created_posts.create(id: 1, body:'test', creator_id:user.id)

        expect(user.created_posts).to be_truthy
    end
end