module QuestionsHelper
	
	def form_title
		@question.new_record? ? "Ask Question" : "Edit Question"
	end

	def header_style

	  if @question.image.exists?
	    %{ style="background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url('#{@question.image.url}'); background-size: cover; background-position: center;" }.html_safe
	  else
	    ""
	  end

	end

end