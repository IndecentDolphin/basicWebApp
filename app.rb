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
  erb(:index)
end
