class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :avg
      t.text :location
      t.text :name

      t.timestamps
    end
  end
end
