class OrderOfService < ActiveRecord::Base
  attr_accessor :client_name
  belongs_to :client
end
