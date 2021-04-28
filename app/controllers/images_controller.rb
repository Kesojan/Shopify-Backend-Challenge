class ImagesController < ApplicationController
    def index
      @images = Image.order(created_at: :desc).limit(14)
    end
  
    def show
      @image = Image.find(params[:id])
    end
  
    def new
      @image = Image.new
    end
  
    def create
      @image = current_user.images.build(image_params)
      if @image.save
        redirect_to @image, notice: 'Image uploaded, Nice!'
      else
        render :new
      end
    end
  
    private
  
    def image_params
      params.require(:image).permit(:image, :description)
    end
end