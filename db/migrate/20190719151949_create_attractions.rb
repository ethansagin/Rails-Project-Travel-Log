class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :url
      t.string :kind_of_attraction
      t.boolean :recommend
      t.string :comments
      t.integer :destination_id

      t.timestamps
    end
  end
end
