class SomeMigrationforAssets < ActiveRecord::Migration
  def change
    add_column :assets, :user_id, :integer
    add_column :assets, :uploaded_file_file_name, :string
    add_column :assets, :uploaded_file_content_type, :string
    add_column :assets, :uploaded_file_file_size, :integer
    add_column :assets, :uploaded_file_updated_at, :datetime
    add_column :assets, :folder_id, :integer

    add_index "assets", ["folder_id"], :name => "index_assets_on_folder_id"
    add_index "assets", ["user_id"], :name => "index_assets_on_user_id"
  end
end
