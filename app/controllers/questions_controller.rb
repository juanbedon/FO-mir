class QuestionsController < ApplicationController

	before_action :private_access, except: [:index, :show]

	def index
		@questions = Question.all.most_recent
	end

	def new
		@question = Question.new
	end

	def create

		@question = Question.new(question_params)

		@question.user = current_user
		
		if @question.save
			redirect_to questions_path, notice: 'Your question was submitted successfully!'
		else
			render :new
		end

	end

	def show
		@question = Question.find(params[:id])
	end

	def edit
		@question = Question.find(params[:id])
	end

	def update

		question = Question.find(params[:id])

		if question.update(question_params)
			redirect_to question_path, notice: "Your question was edited successfully!"
		else
			render :edit
		end

	end

	def destroy

		question = Question.find(params[:id])

		question.destroy

		redirect_to questions_path, notice: "Your question was removed successfully!"

	end

	private

		def question_params
			params.require(:question).permit(:title, :description, :image)
		end

end