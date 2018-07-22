class SearchController < ApplicationController

  def create

  	palabra = "%#{params[:keyword]}%"

  	@questions = Question.where("title LIKE ? OR description LIKE ?",palabra,palabra)

  	respond_to do |format|
  		format.html { redirect_to root_path }
  		format.json { render json: @questions }
  		format.js
  	end

	end

end