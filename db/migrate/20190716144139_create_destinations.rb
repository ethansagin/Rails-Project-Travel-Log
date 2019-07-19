class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :name
      t.boolean :visited
      t.integer :year_of_visit
      t.boolean :recommend
      t.boolean :revisit
      t.string :notes
      t.integer :user_id
      t.integer :country_id

      t.timestamps
    end
  end
end
