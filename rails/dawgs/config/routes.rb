Dawgs::Application.routes.draw do

  root :to => 'welcome#index'
  get '/dogs' => 'dogs#index'
  get '/dogs/new' => 'dogs#new'
  post '/dogs' => 'dogs#create'
  get '/dogs/:id' => 'dogs#show'
  put '/dogs/:id' => 'dogs#update'
  delete '/dogs/:id' => 'dogs#destroy'
end
