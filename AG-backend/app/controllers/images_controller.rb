class ImagesController < ApplicationController
  before_action :set_image, only: [:destroy]

  def index
    images = Image.all

    render json: images
  end
  
  def create
    image = Image.new(image_params)

    if image.save
      render json: image, status: :created, location: image
    else
      render json: image.errors, status: :unprocessable_entity
    end
  end

  def destroy
    image.destroy
  end

  private
   
    def set_image
      image = Image.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:url, :description)
    end
end
