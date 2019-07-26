class Api::PhotosController < ApplicationController
  def index
  @photos = Photo.all
  render "index.json.jb"
  end

  def create
  @photo = Photo.new(
    name: params[:input_name],
    width: params[:input_width],
    height: params[:input_height],
    price: params[:inpur_price]
  )

  @photo.save
  render "create.json.jb"
  end

  def show
    the_id = params[:id]
    @photo = Photo.find_by(id: the_id)
    render "show.json.jb"
  end

  def update
    the_id = params[:id]
    @photo = Photo.find_by(id: the_id)
    @photo.name = params[:input_name]
    @photo.width = params[:width]
    @photo.height = params[:input_height]
    @photo.price = params[:inpur_price]
    @photo.save
    render "update.json.jb"
  end

  def destroy
    the_id = params[:id]
    photo = Photo.find_by(id: the_id)

    photo.destroy
    render "destroy.json.jb"
  end
end 
