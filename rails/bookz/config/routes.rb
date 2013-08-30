Bookz::Application.routes.draw do
   get '/books' => 'books#index'
  get '/books/new' => 'books#new'
  post '/books' => 'books#create'
  get '/books/:id' => 'books#show'
  put '/books/:id' => 'books#update'
  delete '/books/:id' => 'books#destroy'
end

# book_store = Store.create(name: "Amazon")
# my_book = Book.create(title: "Harry Potter and the Methods of Rationality")
# book_store.books << my_book
