class Api::V1::AnswersController < ApplicationController
  before_action :find_answer, only: [:show, :destroy]

  def index
    @answers = Answer.all
    render json: {answers: @answers}
  end

  def show
    render json: {answer: @answer}
  end

  def new
  end

  def create
    @answer = Answer.create(answer_params)
    render json: {answer: @answer}, status: :accepted
  end

  # def update
  #   @answer.update(note_params)
  #   if @answer.save
  #     render json: @answer, status: :accepted
  #   else
  #     render json: { errors: @answer.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  private

  def answer_params
    params.require(:answer).permit(:band_id, :question_id, :answer_response)
  end

  def find_answer
    @answer = Answer.find(params[:id])
  end
end
