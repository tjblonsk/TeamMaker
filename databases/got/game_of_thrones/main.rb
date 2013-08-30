require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?


def run_sql(sql)
  db = PG.connect(dbname: 'westeros', host: 'localhost')
  result = db.exec(sql)
  db.close
  result
end

get '/' do
  erb :index
end

get '/houses' do
  sql = "SELECT * FROM houses"
  @houses = run_sql(sql)
  erb :houses
end

get '/houses/new' do
  erb :new_house
end

post '/houses' do
  name = params[:name]
  sigil = params[:sigil]
  motto = params[:motto]
  sql = INSERT INTO houses (name, sigil, motto) VALUES
('#{name}', '#{sigil}', '#{motto}')
  run_sql(sql)
redirect to '/houses'
end


get '/people' do
  sql = "SELECT * FROM people"
  @people = run_sql(sql)
  erb :people
end

get '/people/new' do
  erb :new_person
end

post '/people/new' do

end


get '/people/:id' do
  id = params[:id]
  sql = "SELECT * FROM people WHERE id = #{id}"
  @person = run_sql(sql).first
  erb :person
end


get '/houses/:id' do
  id = params[:id]
  sql = "SELECT * FROM houses WHERE id = #{id}"
  @house = run_sql(sql).first
  erb :house
end


