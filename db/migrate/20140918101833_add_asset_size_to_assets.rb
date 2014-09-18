class AddAssetSizeToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :asset_size, :integer
  end
end
