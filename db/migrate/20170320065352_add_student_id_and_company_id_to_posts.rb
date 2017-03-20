class AddStudentIdAndCompanyIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :student_id, :integer
    add_column :posts, :company_id, :integer
  end
end
