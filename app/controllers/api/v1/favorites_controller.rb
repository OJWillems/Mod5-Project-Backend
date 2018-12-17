class Api::V1::FavoritesController < ApplicationController
  before_action :find_favorite, only: [:update]
  def index
    @favorites = Favorite.all

     render json: {favorites: @favorites}
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
    params.permit(:favorite_name, :bio)
  end

  def find_favorite
    @favorite = Favorite.find(params[:id])
  end
end
