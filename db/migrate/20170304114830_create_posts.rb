class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :text
      t.integer :student_id
      t.integer :company_id
      t.timestamps
    end
  end
end
