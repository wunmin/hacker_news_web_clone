class CreateCommentsVotes < ActiveRecord::Migration
  def change
    create_table :comments_votes do |comments_vote|
      comments_vote.belongs_to :comment
      comments_vote.belongs_to :user
      comments_vote.integer :vote
      comments_vote.timestamps
    end
  end
end
