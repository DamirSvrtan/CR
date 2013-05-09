class Post < ActiveRecord::Base
  attr_accessible :author, :description, :name, :post_id, :service_provider_id
  belongs_to :service_provider


  def service_provider_name
	self.service_provider.name
  end

  def self.save_multiple_posts(sp,params)
	number_of_posts = params[:name].count
	number_of_created_posts=0
	number_of_posts.times do |i|
		description = params[:description][i].gsub('%20', ' ')
		unless Post.find_by_name(params[:name][i])
			Post.create(:service_provider_id => sp.id, :name => params[:name][i], :author => params[:author][i], :description => description)
		number_of_created_posts += 1
		end
	end
	return number_of_created_posts
  end
end
