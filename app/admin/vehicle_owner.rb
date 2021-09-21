ActiveAdmin.register VehicleOwner do
  permit_params :first_name, :last_name, :email, :mobile_number, :alt_mobile_number, :address, :status

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :mobile_number
    column :alt_mobile_number
    column :address
    column :status
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Vehicle Owner Details" do
      f.input :email 
      f.input :first_name
      f.input :last_name
      f.input :mobile_number
      f.input :alt_mobile_number
      f.input :address
      f.input :status
    end
    f.button :Submit
  end
end