class FunksController < ApplicationController
	def index
		@user = User.find(params[:id])
		@funks = @user.funks
	end

	def create
		@user = User.find(params[:id])

		new_funk = params.require(:funks).permit(:content)
		
		funk = Funk.create(new_funk)
		@user.funks << funk
		redirect_to "/users/#{user.id}/funks"
	end

	def new
		
	end

	def edit
		
	end

	def show

	end

	def update
		
	end

	def destroy
		
	end
end
