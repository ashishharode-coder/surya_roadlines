ActiveAdmin.register Vendor do
  permit_params :first_name, :last_name, :email, :password, :password_confirmation, :mobile_number, :address

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :mobile_number
    column :address
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Seller Details" do
      f.input :email 
      f.input :first_name
      f.input :last_name
      f.input :mobile_number
      f.input :address
      f.input :password
      f.input :password_confirmation
    end
    f.button :Submit
  end
end