class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name
      t.string :nickname
      t.text :description

      t.timestamps
    end
  end
end
