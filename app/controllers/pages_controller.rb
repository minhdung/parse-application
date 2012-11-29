class PagesController < ApplicationController
  
	def landing
	end

	def firststep
	end

	def create
		app = App.new		
		app.name = params[:name]
		app.email = params[:email]
		app.position = params[:position]
		app.about = params[:about]

		if app.save
			session[:app_id] = app.id
			redirect_to add_urls_path
		else render 'firststep'
		end	
	end

	def add_urls
		@app = App.find_by_id(session[:app_id])
	end

	def new_url
	 	@url = Url.new

	 	respond_to do |f|
	 		f.html
	 		f.js
	 	end
	end

	def create_url
		url = Url.new
		url.app_id = session[:app_id]
		url.item = params[:item]
		url.save
	end

	def json
	end

	def goodbye
		session[:id] = nil
	end

end
