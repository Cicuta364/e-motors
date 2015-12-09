class CreateDataSheets < ActiveRecord::Migration
  def change
    create_table :data_sheets do |t|
      t.date :start_date
      t.integer :hz

      t.timestamps null: false
    end
  end
end
