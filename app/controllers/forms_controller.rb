class FormsController < ApplicationController
	before_action :authenticate_user!

	def index
		@forms = Form.all
	end
end
