class FunksController < ApplicationController
	before_action :set_funk, only: [:show, :edit, :update, :destroy]
 	before_action :authenticate_user!, except: :index

	def index
		if current_user.to_param != params[:user_id].to_i
			redirect_to root_path, notice: 'Not authorized'
			return false
		end

		@user = current_user
		@funks = @user.funks
	end

	def create
		new_funk = params.require(:funk).permit(:content)
		
		funk = Funk.create(new_funk)
		current_user.funks << funk

		redirect_to user_funks_path(user_id: current_user.to_param)
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

private
	def set_funk
		@funk = Funk.find(params[:id])
	end
end
