class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :username
      t.string :fname
      t.string :lname
      t.string :borough
      t.string :neighborhood

      t.timestamps null: false
    end
  end
end
