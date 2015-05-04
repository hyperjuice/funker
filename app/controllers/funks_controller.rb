class FunksController < ApplicationController
	before_action :set_funk, only: [:show, :edit, :update, :destroy]
 	before_action :authenticate_user!, except: :index

	def index
		@user = User.find(params[:user_id])
		@funks = @user.funks
	end

	def create
		@user = User.find(params[:user_id])

		new_funk = params.require(:funk).permit(:content)
		
		funk = Funk.create(new_funk)
		@user.funks << funk
		redirect_to "/users/#{@user.id}/funks"
	end

	def new
		@funk = Funk.new(user_id: current_user.id)
	end

	def edit
		authorize @funk
	end

	def show
		authorize @funk
	end

	def update
		
	end

	def destroy
		
	end
end
