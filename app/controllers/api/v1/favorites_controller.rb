class Api::V1::FavoritesController < ApplicationController

  before_action :find_favorite, only: [:update]

  def index
    @favorites = Favorite.all
    render json: {favorites: @favorites}
  end

  def new
  end

  def create
    @favorite = Favorite.create(favorite_params)
    render json: {favorite: @favorite}, status: :accepted
  end


  # def update
  #   @favorite.update(note_params)
  #   if @favorite.save
  #     render json: @favorite, status: :accepted
  #   else
  #     render json: { errors: @favorite.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  private

  def favorite_params
    params.require(:favorite).permit(:band_id, :listener_id)
  end

  def find_favorite
    @favorite = Favorite.find(params[:id])
  end
end
