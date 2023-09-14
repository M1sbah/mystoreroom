class StoreroomsController  < ApplicationController
	before_action :set_storeroom ,only: [:edit,:update,:show,:destroy, :toggle_status]

	def index
		@storerooms=Storeroom.all
	end
	def new
		@storeroom=Storeroom.new
	end
	def create
		@storeroom=Storeroom.new(storeroom_params)
		if @storeroom.save
			redirect_to storerooms_path
		else
			render :new
		end
	end
	def show

	end
	def edit
	end
	def toggle_status
		if @storeroom.public_store?
			@storeroom.private_store!
		else
			 # @storeroom.private_store?
			@storeroom.public_store!
		end

		redirect_to storerooms_path
	end
	def update
		if @storeroom.update(storeroom_params)
			redirect_to storerooms_path
		else
			render :edit
		end
	end
	def destroy
		if @storeroom.destroy
			redirect_to storerooms_path
		end
	end
	private
	def storeroom_params
		params.require(:storeroom).permit(:username, :email ,:image)
	end
	def set_storeroom
		@storeroom = Storeroom.find(params[:id])
	end

end