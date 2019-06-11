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
  # @name = ["Rem", "Petra"].sample
  p params
  @name = params[:name]
  p @name
  erb(:cat)
end

get '/named-cat/' do
  p params
  @name = params[:name]
  erb(:index)
end
