require 'rails_helper'

RSpec.describe Post, :type => :model do
    it "can retrieve comments on a post" do
        user = User.create(id:1, email:'test@test.com', password:'test123')
        user.created_posts.create(id: 1, title:'test', body:'test', creator_id:user.id)
        post = user.created_posts.first

        expect(post.comments).to be_truthy
    end

    it "can retrieve likes on a post" do
        user = User.create(id:1, email:'test@test.com', password:'test123')
        user.created_posts.create(id: 1, title:'test', body:'test', creator_id:user.id)
        post = user.created_posts.first

        expect(post.likes).to be_truthy
    end

    it "can retrieve name of post creator" do
        user = User.create(id:1, email:'test@test.com', password:'test123', first_name:'test')
        user.created_posts.create(id: 1, title:'test', body:'test', creator_id:user.id)
        post = user.created_posts.first

        expect(post.creator.first_name).to be_truthy
    end

end