class ShapeInfo < ApplicationRecord
  belongs_to :shape

  validates :order, presence: true, numericality: { only_integer: true,
                                                    greater_than: 0 }
  validates :value, presence: true, numericality: { greater_than: 0 }
  validates :shape, presence: true

  enum type: [:angle, :side]
end
