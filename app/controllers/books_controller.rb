class BooksController < ApplicationController
	def new
	end

	def show
		@book = Book.new
	end

	def create
		book = Book.new(book_params)
		book.save
		redirect_to book_path(book.id)
	end

private
	def book_params
		params.require(:book).permit(:title, :body)
	end
end
