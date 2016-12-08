class PagesController < ApplicationController
	skip_before_action :verify_authenticity_token, only: [:info]
	protect_from_forgery :except => :info
	layout "second"


	def info
		if params[:initzarqkr].present?
			@init = params[:initzarqkr]
		  	@h1 = params[:h]
		  	@a1 = params[:a]
		  	@ref = params[:ref]
		end

		if params[:trigger].present?
			@trigger = params[:trigger]
			@h2 = params[:h0]
			@a2 = params[:a0]
		end
	end
end

