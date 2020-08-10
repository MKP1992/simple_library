class Book < ApplicationRecord
	validates :book_title, presence: true

	has_many :book_authors, :dependent => :destroy
	has_many :authors, through: :book_authors
end