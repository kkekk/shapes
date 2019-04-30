class Shape < ApplicationRecord
  has_many :sides
  has_many :angles
  has_many :shape_infos
  # length is referring to array length, not total length of sides
  validates :length, presence: true, numericality: { only_integer: true,
                                                     greater_than: 0,
                                                     odd: true }
  def to_array
    shape_infos.order(:order).map do |info|
      info.value.to_f
    end
  end
end
