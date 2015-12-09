class CreateResponsibles < ActiveRecord::Migration
  def change
    create_table :responsibles do |t|
      t.string :code
      t.time :start_time
      t.time :end_time

      t.timestamps null: false
    end
  end
end
