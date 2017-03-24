class AddColumnToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :company_name, :string
    add_column :companies, :human_resources, :string
    add_column :companies, :profile_image, :string
    add_column :companies, :company_id, :integer
  end
end
