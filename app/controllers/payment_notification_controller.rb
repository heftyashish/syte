# Underway
class PaymentNotificationController < ApplicationController
	protect_from_forgery :except => [:create]

	def create
		logger.info "========================="
		logger.info params
		paypal_values= params
		puts paypal_values
	end
end
