class ShapesController < ApplicationController
  # GET /shapes
  # Retrieve the shape_id based on shape array, ie [3, 60, 3]
  def index
    if index_params[:shape].length.even?
      render status: :bad_request, json: { message: 'invalid shape' }
    elsif (shape_id = find_shape(index_params[:shape]))
      render json: { id: shape_id }
    else
      render status: :not_found
    end
  end

  def create
    sides = shape_params[:sides]
    angles = shape_params[:angles]
    if invalid_side_angles?(sides, angles)
      render status: :unprocessable_entity, json: { message: "invalid sides and angles" } and return
    end

    length = sides.length + angles.length
    ActiveRecord::Base.transaction do
      shape = Shape.create!(length: length)
      shape.sides.each_with_index do |val, index|
        shape.sides.create!(value: val, order: index * 2)
      end
      shape.angles.each_with_index do |val, index|
        shape.angles.create!(value: val, order: index * 2 + 1)
      end
      render status: :created, json: { id: shape.id, length: shape.length }
    rescue ActiveRecord::RecordInvalid => e
      render status: :unprocessable_entity, json: { error: e }
    end
  end

  private

  def index_params
    params.permit shape: []
  end

  def shape_params
    params.permit sides: [], angles: []
  end

  def invalid_side_angles?(sides, angles)
    sides.length - angles.length != 1 || !sides.all?(Numeric) || !angles.all?(Numeric)
  end

  # extract this to model?
  # search comparing whole array, unoptimised
  # ideally, we should find by checking the first in the order matches with the
  # array, then so on. Somewhat like linked list traversal with comparison
  def find_shape(arr)
    coll = Shape.includes(:shape_infos).where(length: arr.length)
    return if coll.nil?

    coll.each do |shape|
      return shape.id if shape.to_array == arr
    end
    return nil
  end
end
