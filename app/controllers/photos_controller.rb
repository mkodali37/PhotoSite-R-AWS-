class PhotosController < ApplicationController
  def index
    @photos = Photo.where(user_id: params[:user_id])
    @user = User.find(params[:user_id])
  end
end
