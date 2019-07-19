class CreateDosAndDonts < ActiveRecord::Migration[5.2]
  def change
    create_table :dos_and_donts do |t|
      t.string :name
      t.string :url
      t.string :type
      t.boolean :recommend
      t.string :comments
      t.integer :destination_id

      t.timestamps
    end
  end
end
