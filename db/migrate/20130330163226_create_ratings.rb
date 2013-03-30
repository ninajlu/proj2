class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.text :comments
      t.datetime :posted
      t.integer :rate
      t.belongs_to :venue
      t.belongs_to :meal
      t.belongs_to :user

      t.timestamps
    end
    add_index :ratings, :venue_id
    add_index :ratings, :meal_id
    add_index :ratings, :user_id
  end
end
