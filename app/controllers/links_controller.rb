class LinksController < ApplicationController

	def index
		@links = Link.all
	end

	def new
		@link = Link.new(params[:link])
		@link.save
	end

	def create
		@link = Link.new(params[:link])
		if @link.save
			flash[:notice] = "Link has been created."
			redirect_to @link
		else
			flash[:alert] = "Link has not been created."
			render :action => "new"
		end
	end

	def show
		@link = Link.find(params[:id])
	end
end