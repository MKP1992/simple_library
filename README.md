# README

This README would normally document whatever steps are necessary to get the
application up and running.

ruby version : 2.3.1

rails : 5.2.0

http://localhost:3000/admin

used for admin panel
email: admin@example.com
password: password

1. Admin part only used to craete autors and books and has many throuth association used to implement this feature.

I don't hadle while craete book if author not present its save book in database. If need, I will do this.

API end point to fetch the data, in Api did not implement any authentication, its used as a public API.

Author with books: 

curl http://localhost:3000/authors/1 for single author

curl http://localhost:3000/authors for all author

Book with authors: 

curl http://localhost:3000/books/1 for single book

curl http://localhost:3000/books for all book
