class Product < ActiveRecord::Base
  belongs_to :category
  validates :name, :category_id, presence: true
  validates_length_of :name, maximum: 30

  scope :by_category_id, lambda { |category_id| where(category_id: category_id) }

  scope :sorted, -> { order(:name) }

  def to_s
    name
  end

  def status_humanize
    status ? "Ativo" : "Inativo"
  end

  def active?
    status?
  end
end
