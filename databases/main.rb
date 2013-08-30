require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'
require 'rainbow'
require 'sinatra/activerecord'

def run_sql(sql)
  db = PG.connect(:dbname => 'sinatra_address_book', :host => 'localhost')
  result = db.exec(sql)
  db.close
  result
end

get '/' do
  erb :index
end

get '/contacts' do
  db = PG.connect(:dbname => 'sinatra_address_book', :host => 'localhost')
  sql = "SELECT * FROM contacts"
  @contacts = db.exec(sql)
  erb :contacts
end

get '/contacts/:id/edit' do
  id = params[:id]
  db = PG.connect(:dbname => 'sinatra_address_book', :host => 'localhost')
  sql = "SELECT * FROM contacts WHERE first_name = #{first_name}"
  db.close
  erb :edit
end


post '/conacts/delete' do

end


get '/contacts/new' do
erb :form
end

post '/contacts' do
  first_name = params[:first_name]
  last_name = params[:last_name]
  age = params[:age]
  db = PG.connect(:dbname => 'sinatra_address_book', :host => 'localhost')
  sql = "INSERT INTO CONTACTS (first_name, last_name, age) VALUES ('#{first_name}', '#{last_name}', #{age})"
  db.exec(sql)
  db.close
  redirect to '/contacts'
end


get '/contacts/:name' do
  @user_name = params[:name]
  db = PG.connect(:dbname => 'sinatra_address_book', :host => 'localhost')
  sql = "SELECT * FROM contacts where first_name = '#{@user_name}'"
  @contact = db.exec(sql).first
  erb :contact
end





