class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :building_manager
      t.string :phone
      t.string :hours

      t.timestamps
    end
  end
end
