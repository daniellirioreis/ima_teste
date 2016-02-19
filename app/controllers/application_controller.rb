require "application_responder"
class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
 
  respond_to :html
  responders :flash

	helper_method :message
	  
  def message
    @message ||= {}
  end

	def define_environment_message
    message[:alert] ||= []
  end
 
end
