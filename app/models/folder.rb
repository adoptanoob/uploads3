class Folder < ActiveRecord::Base
  has_ancestry #// A SE RENSEIGNER SUR GEM gem "ancestry"
  belongs_to :user
  has_many :assets, :dependent => :destroy

  has_many :shared_folders, :dependent => :destroy
  
  def shared?
    !self.shared_folders.empty?
  end
end
