class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :last_year_visited, :default => 0

      t.timestamps
    end
  end
end
