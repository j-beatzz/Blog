class ArticelsController < ApplicationController
	def index
		@articels = Articel.all
	end

	def new
		@articel = Articel.new
	end

	def create
		@articel = Articel.new(articel_params)
		if @articel.save
			redirect_to @articel
		else
			render 'new'
		end
	end

	def show
		@articel = Articel.find(params[:id])
	end

	def edit
		@articel = Articel.find(params[:id])
	end

	def update 
		@articel = Articel.find(params[:id])

		if @articel.update(articel_params)
			redirect_to @articel
		else
			render 'edit'
		end
	end

	def destroy
		@articel = Articel.find(params[:id])
		@articel.destroy

		redirect_to articels_path
	end

	private
		def articel_params
			params.require(:articel).permit(:title, :text)
		end
end
