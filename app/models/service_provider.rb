class ServiceProvider < ActiveRecord::Base
require 'rsa'
  attr_accessible :adress, :name
  has_many :posts, :dependent => :destroy

end
