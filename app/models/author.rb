class Author < ApplicationRecord
	validates :first_name, :last_name, :date_of_birth, presence: true
	
	has_many :book_authors, :dependent => :destroy
	has_many :books, through: :book_authors

	def to_s
  	"#{first_name} #{last_name}"
  end
end
