class RemoveCompanyIdFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :company_id, :integer
  end
end
