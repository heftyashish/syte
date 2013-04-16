class ContactController < ApplicationController

	def index
		
	end

	def message
		params.delete :controller
		params.delete :action
		params.delete :MAX_FILE_SIZE

		@contact= Contact.new(params)

		@contact.save!
		redirect_to '/contact'
	end
end
