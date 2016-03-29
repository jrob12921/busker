class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :line
      t.float :lat
      t.float :long
      t.boolean :gmaps

      t.timestamps null: false
    end
  end
end
