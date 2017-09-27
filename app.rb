require 'sinatra'
require_relative "./TodoManager.rb"

get '/todos' do
	#INDEX - all th data
	TodoManager.index
end

post '/todos' do
	# "CREATE" - create a new todo
	text = params[:text]
	TodoManager.create(text)
end

get '/todos/:id' do
	id = params[:id]
	# "SHOW" #{id} - show a single record. retrieves it from the specific id
	TodoManager.show(id.to_i)

end

put '/todos/:id' do
	id = params[:id] 
	text = params[:text]
	# "UPDATE" #{id} - update a single record
	TodoManager.update(id.to_i, text)
end

delete '/todos/:id' do
	id = params[:id] #dynamic url attribute
	# "DESTROY" #{id} - deletes a single record
	TodoManager.delete(id.to_i)
end