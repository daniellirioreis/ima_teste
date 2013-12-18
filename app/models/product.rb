class Product < ActiveRecord::Base
  belongs_to :category
  validates :name, :category_id, presence: true
  validates_length_of :name, maximum: 30

  def to_s
    name
  end
  def status_humanize
    status ? "Ativo" : "Inativo"
  end
end
