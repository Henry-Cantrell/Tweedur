require 'rails_helper'

RSpec.describe CommentLike, type: :model do
  it "can be created by a user on a comment" do
        user = User.create(id:1, email:'test@test.com', password:'test123')
        user.created_posts.create(id: 1, body:'test', creator_id:user.id)
        post = user.created_posts.first

	comment = Comment.create(post_id: post.id, author_id: user.id, body: 'test')
        comment_like = CommentLike.create(id: 1, body: 'testing', comment_liker_id: user.id, comment_id: comment.id)

        expect(comment_like).to be_truthy
    end
end
