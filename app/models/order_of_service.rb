class OrderOfService < ActiveRecord::Base
  attr_accessor :client_name
  attr_accessor :technical_consultant_name
  
  belongs_to :technical_consultant
  belongs_to :client
  
  validates :client_name, :technical_consultant_name, presence: true
	
end
