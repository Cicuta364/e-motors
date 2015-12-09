class CreateOts < ActiveRecord::Migration
  def change
    create_table :ots do |t|
      t.string :motor_type
      t.string :brand
      t.string :power
      t.integer :speed
      t.string :voltage
      t.string :current
      t.string :serial
      t.text :oder_activities

      t.timestamps null: false
    end
  end
end
