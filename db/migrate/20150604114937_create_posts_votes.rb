class CreatePostsVotes < ActiveRecord::Migration
  def change
    create_table :posts_votes do |posts_vote|
      posts_vote.belongs_to :post
      posts_vote.belongs_to :user
      posts_vote.integer :vote
      posts_vote.timestamps
    end
  end
end
