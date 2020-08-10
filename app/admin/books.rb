ActiveAdmin.register Book do
  index do
    column :book_title
    actions
  end

  form html: { multipart: true } do |f|
    f.inputs do
      f.input :book_title, label: "Title"
			f.input :authors, :as => :select, :multiple => true, collection: Author.all.map{|u| [u.to_s, u.id]} 
    end
    f.actions
  end

  show do |book|
	  attributes_table do
	    row :book_title
	  end

	 	panel 'Authors' do
	    table_for book.authors do |t|
	      t.column :first_name
	      t.column :last_name
	      t.column :date_of_birth
	    end
	  end
  end
  
  permit_params :book_title, author_ids: []
end