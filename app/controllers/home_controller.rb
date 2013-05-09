class HomeController < ApplicationController
require 'open-uri'

	def service_providers
		@service_providers = ServiceProvider.all
		render :json => @service_providers
	end

	def posts
		if params[:except]
			@sp = ServiceProvider.find_by_name(params[:except])
			@posts = if @sp.nil?
					Post.all
				 else
					Post.where('service_provider_id != ?', @sp.id)
				 end
		else					
			@posts = Post.all
		end
		render :json => @posts, :methods => :service_provider_name
	end

	def register_new_sp
		
		if !params[:name].nil? && !params[:adress].nil?
			if ServiceProvider.find_by_name(params[:name]).nil?
				ServiceProvider.create(:name => params[:name], :adress => params[:adress])
				render :json => {:status => "Registered Successfully!" }
			else
				render :json => {:status => "Already Registered!"}
			end	
		else
			render :json => {:status => "Please send the parameters correctly!"}
		end
	end

        def register_posts
		sp = ServiceProvider.find_by_name(params[:sp])
		if sp
			number_of_posts = Post.save_multiple_posts(sp,params)
			render :json => {:status => "#{number_of_posts} newly added posts to the CR" }
		else
			render :json => {:status => "Your service providers does not exist. Register first"}
		end
        end

	def home
	end
end
#HTTParty.get('http://localhost:3002/service_providers').response.body
