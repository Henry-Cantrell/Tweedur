class Comment < ApplicationRecord
    belongs_to :author, class_name: 'User'
    belongs_to :post

    # Query methods to retrieve posts user commented on within controller
    
    def commented_posts(id)
        retrieve_post_commented_on(id)
    end

    private

    def retrieve_post_commented_on(user_id)
        comments.where(author_id:user_id)
    end)
end
