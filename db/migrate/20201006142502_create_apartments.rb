class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :address
      t.string :rent
      t.float :reviews
      t.string :amenities
      t.string :deposit
      t.string :sq_ft
      t.string :lease_length
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
