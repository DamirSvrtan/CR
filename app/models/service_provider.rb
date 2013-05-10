class ServiceProvider < ActiveRecord::Base
#  after_destroy :delete_keys
  attr_accessible :adress, :name
  has_many :posts, :dependent => :destroy

#  def delete_keys
#	Key.find_by_sp(self.name).destroy
#  end

end
