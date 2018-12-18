class Api::V1::ListenersController < ApplicationController

  before_action :find_listener, only: [:show, :update, :favorites]

  def index
    @listeners = Listener.all

     render json: {listeners: @listeners}
  end

  def show
    render json: {listener: @listener}
  end

  def new
  end

  def create
    @listener = Listener.create(listener_params)
    render json: {listener: @listener}, status: :accepted
  end

  def favorites
    favorites = @listener.bands
    render json: {favorites: favorites}
  end

  # def update
  #   @listener.update(note_params)
  #   if @listener.save
  #     render json: @listener, status: :accepted
  #   else
  #     render json: { errors: @listener.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  private

  def listener_params
    params.require(:listener).permit(:username, :password)
  end

  def find_listener
    @listener = Listener.find(params[:id])
  end
end
