require 'sinatra'

get '/' do
  erb(:hello)
end

get '/secret/' do
  "This is my safe space, pls leave"
end

get '/welcome/' do
  "This is a splash page"
end

get '/cat/' do
  @name = ["Rem", "Petra"].sample
  erb(:cat)
end

get '/cat-form/' do
  erb :cat_form
end

post '/named-cat/' do
  p params
  @name = params[:name]
  erb(:index)
end
