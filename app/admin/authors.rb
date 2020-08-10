ActiveAdmin.register Author do
  index do
    column :first_name
    column :last_name
    column :date_of_birth
    actions
  end  

  show do |author|
	  attributes_table do
	    row :first_name
	    row :last_name
	    row :date_of_birth
	  end

	  panel 'Books' do
	    table_for author.books do |t|
	      t.column :book_title
	    end
	  end
  end

  permit_params :first_name, :last_name, :date_of_birth
end