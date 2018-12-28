class Api::V1::BandsController < ApplicationController

  before_action :find_band, only: [:update, :questions]

  def index
    @bands = Band.all
     render json: {bands: @bands}
  end

  def new
  end

  def create
    @band = Band.create(band_params)
    render json: {band: @band}, status: :accepted
  end

  def questions
    questions = @band.questions
    render json: {questions: questions}
  end

  # def update
  #   @band.update(note_params)
  #   if @band.save
  #     render json: @band, status: :accepted
  #   else
  #     render json: { errors: @band.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  private

  def band_params
    params.require(:band).permit(:username, :password, :band_name, :bio, :img_url)
  end

  def find_band
    @band = Band.find(params[:id])
  end

end
