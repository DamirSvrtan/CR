class ServiceProvider < ActiveRecord::Base
  attr_accessible :adress, :name
  has_many :posts, :dependent => :destroy
end
