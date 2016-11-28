class FormsController < ApplicationController
	before_action :authenticate_user!, only: [:index]


	def index
		@forms = Form.all
	end

	def new
		numberOfQuestions = 0
		if  params[:numberOfQuestions]
			numberOfQuestions = params[:numberOfQuestions].to_i
		end
		@form = Form.new
		numberOfQuestions.times { @form.questions.build }
	end


	def create
		@form = Form.new(form_params)
		@form.user = current_user
		if @form.save
			redirect_to root_path, notice: "Form correctly created"
		else
			render :new, notice: "Form submition failled"
		end
	end

	def show
		@answer = Answer.new
		@form = Form.find(params[:id])
		questions_id = @form.questions.collect(&:id)
		if request.post?
			questions_id.each do |question_id|
				id_string = question_id.to_s
				Answer.create(body: params[id_string], question_id: question_id)
			end
			redirect_to :back, notice: "Answers correctly submited"
		else
			numberOfAnswers = questions_id.size
			(0..numberOfAnswers-1).each do |i|
				question = Question.find(questions_id[i])
				question.answers.build
			end
		end

	end

	def destroy
		@form = Form.find(params[:id]).destroy
		redirect_to root_path
	end

	private
		def form_params
			params.require(:form).permit(:title, :user_id, questions_attributes: [ :body, :id, :form_id, answers_attributes: [ :body, :id, :question_id]] )
		end
end
