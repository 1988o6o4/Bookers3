class BooksController < ApplicationController
def index
@book = Book.new
@books = Book.all
end
def create
@book = Book.new(book_params)
@book.user_id = current_user.id
@book.save
redirect_to user_path(current_user.id)
end
def show
end
def edit
end
def update
end
def destroy
end

private
def book_params
params.require(:book).permit(:title, :body)
end




end
