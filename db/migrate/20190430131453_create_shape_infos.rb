class CreateShapeInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :shape_infos do |t|
      t.integer :order, null: false
      t.decimal :value, null: false
      t.integer :type, null: false
      t.references :shape, foreign_key: true, null: false

      t.timestamps
    end
    add_index :shape_infos, [:shape_id, :order], unique: true
  end
end
