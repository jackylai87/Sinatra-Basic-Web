require 'sinatra'
require 'sinatra/reloader'
require 'slim'
require 'sass'
get('/styles.css'){ scss :styles }
set :public_folder, 'public'
set :views, 'views'
​
get '/' do 
	slim :home
end
​
get '/about' do
	@title = "All About This Website"
	slim :about
end
​
get '/contact' do
	slim :contact
end
​
not_found do
	slim :not_found
end
​
get '/fake-error' do
	status 500
	"there is nothing wrong, really :p"
end