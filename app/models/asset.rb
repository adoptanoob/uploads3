class Asset < ActiveRecord::Base
  attr_accessor :user_id, :uploaded_file, :folder_id
  before_create :default_name


  belongs_to :user
  belongs_to :folder

  # validates_attachment_size :uploaded_file, :less_than => 10.megabytes
  # validates_attachment_presence :uploaded_file

  def file_name
    uploaded_file_file_name
  end

  def file_size
    uploaded_file_file_size
  end



  def default_name
    self.name ||= File.basename(asset_url, '.*').titleize if asset_url
  end
end