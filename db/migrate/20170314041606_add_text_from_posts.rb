class AddTextFromPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :text, :string
  end
end
