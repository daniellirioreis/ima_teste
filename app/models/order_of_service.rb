class OrderOfService < ActiveRecord::Base
  attr_accessor :client_name
  attr_accessor :technical_consultant_name
  attr_accessor :productive_name

  belongs_to :technical_consultant
  belongs_to :client
  belongs_to :productive
  has_enumeration_for :status_os, whith: StatusOs, create_helpers: true
  validates :client_name, :technical_consultant_name, :productive_name, presence: true
	
end
