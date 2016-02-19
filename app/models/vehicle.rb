class Vehicle < ActiveRecord::Base
	belongs_to :client

	validates :type_vehicle, :license_plate, presence: true
	validates :license_plate, uniqueness: true

	def	to_s
		"Placa:#{license_plate} | Descrição:#{description} | Cliente: #{client}"
	end
	
end
