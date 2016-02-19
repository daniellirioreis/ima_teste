class TechnicalConsultant < ActiveRecord::Base
	validates :name, :cod, presence: true
	validates :name, :cod, uniqueness: true

	scope :sorted, -> { order(:name) }

	def to_s
			name
	end
end
