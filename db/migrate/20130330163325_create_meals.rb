class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.belongs_to :venue
      t.time :start
      t.time :end
      t.text :type

      t.timestamps
    end
    add_index :meals, :venue_id
  end
end
