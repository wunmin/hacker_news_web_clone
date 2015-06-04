class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |post|
      post.text :post_desc
      post.belongs_to :user
      post.timestamps
    end
  end
end
