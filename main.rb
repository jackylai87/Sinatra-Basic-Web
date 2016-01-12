require 'sinatra'
require 'sinatra/reloader'
require 'slim'
require 'sass'
get('/styles.css'){ scss :styles }
set :public_folder, 'public'
set :views, 'views'

get '/' do 
	@title = "Home Page"
	slim :home
end

get '/about' do
	@title = "All about This Website"
	slim :about
end

get '/contact' do
	@title = "Contact us ;-)"
	slim :contact
end

#not_found can name whatever we want, calling not_found here 
#is just because it made sense.
not_found do
	@title = "Too Bad, 404!!"
	slim :not_found
end