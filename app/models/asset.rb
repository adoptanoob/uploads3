class Asset < ActiveRecord::Base
  before_create :default_name

  def default_name
    self.name ||= File.basename(asset_url, '.*').titleize if asset_url
  end
end
