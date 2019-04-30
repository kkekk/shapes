# Use Single Table inheritance for sides and angle, but not shapes itself
# Not sure how rails will auto increment the shape_id unless we have a shape table
class ShapeInfo < ApplicationRecord
  belongs_to :shape
  enum type: [:Angle, :Side]

  validates :type, inclusion: { in: types.keys, message: :invalid }
  validates :value, presence: true, numericality: { greater_than: 0 }
  validates :order, presence: true, numericality: { only_integer: true,
                                                    greater_than_or_equal_to: 0 }
end
