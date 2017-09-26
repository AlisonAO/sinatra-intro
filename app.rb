require 'sinatra'
require_relative "./TodoManager.rb"

get '/todos' do
	TodoManager.index
end

post '/todos' do
	# "CREATE"
	text = params[:text]
	TodoManager.create(text)
end

get '/todos/:id' do
	id = params[:id]
	# "SHOW" #{id}
	TodoManager.show(id.to_i)

end

put '/todos/:id' do
	id = params[:id]
	text = params[:text]
	# "UPDATE" #{id}
	TodoManager.update(id.to_i, text)
end

delete '/todos/:id' do
	id = params[:id] #dynamic url attribute
	# "DESTROY" #{id}
	TodoManager.delete(id.to_i)
end