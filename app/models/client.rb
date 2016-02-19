class Client < ActiveRecord::Base

	has_many :vehicles
	
	validates :name, presence: true
	validates :name, uniqueness: true

	scope :sorted, -> { order(:name) }

	def to_s
			name
	end

end
