class CreateVehicleOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicle_owners, id: :uuid do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :mobile_number
      t.string :alt_mobile_number
      t.text   :address
      t.boolean :status, default: true
      t.timestamps
    end

    add_index :vehicle_owners,  :mobile_number, unique: true
  end
end