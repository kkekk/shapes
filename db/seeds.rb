# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shape.create!(length: 3)
ShapeInfo.create!(shape_id: 1, type: "Side", value: 3, order: 0)
ShapeInfo.create!(shape_id: 1, type: "Angle", value: 60, order: 1)
ShapeInfo.create!(shape_id: 1, type: "Side", value: 3, order: 2)

Shape.create!(length: 5)
ShapeInfo.create!(shape_id: 2, type: "Side", value: 4, order: 0)
ShapeInfo.create!(shape_id: 2, type: "Angle", value: 90, order: 1)
ShapeInfo.create!(shape_id: 2, type: "Side", value: 4, order: 2)
ShapeInfo.create!(shape_id: 2, type: "Angle", value: 90, order: 3)
ShapeInfo.create!(shape_id: 2, type: "Side", value: 4, order: 4)

Shape.create!(length: 3)
ShapeInfo.create!(shape_id: 3, type: "Side", value: 2, order: 0)
ShapeInfo.create!(shape_id: 3, type: "Angle", value: 40, order: 1)
ShapeInfo.create!(shape_id: 3, type: "Side", value: 2, order: 2)
