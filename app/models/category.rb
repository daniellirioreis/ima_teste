class Category < ActiveRecord::Base
  validates :name, presence: true
  validates_length_of :name, maximum: 30
  validates :name, uniqueness: true

  def to_s
    name
  end
end
