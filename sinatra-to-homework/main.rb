require 'sinatra'
# if development is optional
require 'sinatra/reloader' if development?
# gem is for postgres
require 'pg'


#SEE ALL TASKS
get '/list' do
db = PG.connect(:dbname => 'to_do_list', :host => 'localhost')
  sql = "SELECT * FROM tasks"
  @tasks = db.exec(sql)
  db.close
  erb :list
end

#EDIT TASK
get '/list/:name/edit' do
  @name = params[:name]
  # db = PG.connect(:dbname => 'to_do_list', :host => 'localhost')
  # sql = "SELECT * FROM tasks WHERE name = '#{name}'"
  # @task = db.exec(sql).first
  # db.close
  erb :edit_form
end

#post edit to DB
post '/list/update' do
  name = params[:name]
  approx_hrs = params[:approx_hrs]
  complete = params[:complete]
  db = PG.connect(:dbname => 'to_do_list', :host => 'localhost')
  sql = "UPDATE tasks SET (name, approx_hrs, complete) = ('#{name}', #{approx_hrs}, '#{complete}') WHERE name = '#{name}'"
  db.exec(sql)
  db.close
  redirect to '/list'
end

# Make a new task
get '/list/new' do
  erb :add_form
end

#ADD TASK
post '/list' do
  name = params[:name]
  approx_hrs = params[:approx_hrs]
  complete = params[:complete]
  db = PG.connect(:dbname => 'to_do_list', :host => 'localhost')
  sql = "INSERT INTO tasks (name, approx_hrs, complete) VALUES ('#{name}', #{approx_hrs}, '#{complete}')"
  db.exec(sql)
  db.close
  redirect to '/list'
end



#DELETE
get '/list/delete' do
  erb :list
end

#DELETE TASK
post '/list/delete' do
  name = params[:name]
  db = PG.connect(:dbname => 'to_do_list', :host => 'localhost')
  sql = "DELETE FROM tasks WHERE name = '#{name}'"
  db.exec(sql)
  db.close
  redirect to "/list"
end



#SEE INDIVIDUAL TASK
get '/list/:name' do
  @name = params[:name]
  db = PG.connect(:dbname => 'to_do_list', :host => 'localhost')
  sql = "SELECT * FROM tasks WHERE name = '#{@name}'"
  @descriptions = db.exec(sql).first
  db.close
  erb :task
end









