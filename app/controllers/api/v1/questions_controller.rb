class Api::V1::QuestionsController < ApplicationController
  before_action :find_question, only: [:show, :destroy, :answer, :update]

  def index
    @questions = Question.all
    render json: {questions: @questions}
  end

  def show
    render json: {question: @question}
  end

  def new
  end

  def create
    @question = Question.create(question_params)
    render json: {question: @question}, status: :accepted
  end

  def answer
    answer = @question.answer
    render json: {answer: answer}
  end

  def update
    @question.update(question_params)
    if @question.save
      render json: @question, status: :accepted
    else
      render json: { errors: @question.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    # render json: {favorite: @favorite}
    @question.destroy
  end

  private

  def question_params
    params.require(:question).permit(:band_id, :listener_id, :question_response, :has_answered)
  end

  def find_question
    @question = Question.find(params[:id])
  end
end
