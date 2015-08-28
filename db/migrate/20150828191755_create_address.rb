class CreateAddress < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :spot
      t.string :street
      t.integer :number

      t.timestamps
    end
  end
end
