ActiveAdmin.register Shareholder do
  menu priority: 3
  permit_params :first_name,
                :last_name,
                :email,
                :phone,
                address_attributes: %i(id line1 line2 city state zip)

  controller do
    def new
      @shareholder = Shareholder.new
      @shareholder.build_address
    end
  end

  index do
    column :first_name
    column :last_name
    column :email
    column :phone
    column :address do |shareholder|
      shareholder.address.to_s
    end
    actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :phone
      row :full_address
    end
  end

  form do |f|
    f.inputs "Shareholder" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone
      f.has_many :address, new_record: false do |t|
        t.input :line1
        t.input :line2
        t.input :city
        t.input :state
        t.input :zip
      end
    end
    f.actions
  end
end
