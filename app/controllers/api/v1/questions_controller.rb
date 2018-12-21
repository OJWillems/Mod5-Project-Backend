class Api::V1::QuestionsController < ApplicationController
  before_action :find_question, only: [:show, :destroy]

  def index
    @questions = Question.all
    render json: {questions: @questions}
  end

  def new
  end

  def create
    @question = Question.create(question_params)
    render json: {question: @question}, status: :accepted
  end

  # def update
  #   @question.update(note_params)
  #   if @question.save
  #     render json: @question, status: :accepted
  #   else
  #     render json: { errors: @question.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  private

  def question_params
    params.require(:question).permit(:band_id, :listener_id, :question_response)
  end

  def find_question
    @question = Question.find(params[:id])
  end
end
