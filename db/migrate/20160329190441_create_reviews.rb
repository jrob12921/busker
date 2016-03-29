class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :station, index: true, foreign_key: true
      t.string :title
      t.text :content
      t.boolean :rating
      t.date :date_seen
      t.string :artist_name
      t.text :instruments
      t.text :add_info

      t.timestamps null: false
    end
  end
end
