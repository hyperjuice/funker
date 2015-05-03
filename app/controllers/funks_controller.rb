class FunksController < ApplicationController
	def index
		@funks = Funk.all
		render :index
	end

	def create
		funk = params.require(:funks).permit(:content)
		Funk.create(funk)
		redirect_to "/funks"
	end

	def new
		
	end

	def edit
		
	end

	def show
		id = params[:id]
		@plane = Plane.find(id)
	end

	def update
		
	end

	def destroy
		
	end
end
