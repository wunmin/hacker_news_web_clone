class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |comment|
      comment.text :comment_desc
      comment.belongs_to :user
      comment.belongs_to :post
      comment.timestamps
    end
  end
end
